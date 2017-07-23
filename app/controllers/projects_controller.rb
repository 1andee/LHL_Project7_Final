# IF ANY CHANGES ARE MADE HERE, RESTART SERVER

class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]

  def index
    @projects = Project.all
  end

  def show
    @user = User.all
    @project_skills_id = Project.find(@project.id).project_skills.pluck(:skill_id)
    @project_skills = Skill.where(id: @project_skills_id).order(skill_name: :asc)

    @project_goals = Goal
                    .joins("INNER JOIN completion_statuses ON goals.completion_status_id = completion_statuses.id")
                    .select("goals.*, completion_statuses.name")
                    .where(project_id: @project.id)
                    .order(id: :desc)

    @comments = Comment
                .joins("INNER JOIN users ON comments.user_id = users.id")
                .joins("LEFT OUTER JOIN goals ON comments.goal_id = goals.id")
                .select("comments.*, users.name, goals.title")
                .where(project_id: @project.id)
                .order(created_at: :desc)


  end

  def new
    @project = Project.new
  end

  def edit
  end

  def create
     if project_params[:mentor_id] == "Mentor"
        @project = Project.new({name: project_params[:name], description: project_params[:description], project_url: project_params[:project_url], start_date: project_params[:start_date], finish_date: project_params[:finish_date], public: project_params[:public], mentor_pending: false, mentor_id: current_user.id})
    else
       @project = Project.new({name: project_params[:name], description: project_params[:description], project_url: project_params[:project_url], start_date: project_params[:start_date], finish_date: project_params[:finish_date], public: project_params[:public], mentee_pending: false, mentee_id: current_user.id})
    end

    if @project.save!
      flash[:success] = 'Your account has been created'
      redirect_to(@project, :show => 'Project was successfully created.')
    else
      # If the project can't be added
      Rails.logger.info("-------------------------------")
      Rails.logger.info("new project couldn't be saved.....")
      Rails.logger.info("-------------------------------")
      flash[:warning] = @project.errors.full_messages.join(' // ')
      redirect_to '/projects'
    end
  end

  def update
    puts "project updated"
    puts params[:mentee_id]
    puts params[:project_id]
    puts params[:set_mentee_id]
    puts params[:set_mentor_id]

    @project = Project.find(params[:project_id])

    mentor_request_message = "<p>User #{current_user.name} has requested mentorship for <a href='/projects/#{params[:project_id]}' class='feed-project-link'>#{@project.name}</a></p>"

    mentee_request_message = "<p>User #{current_user.name} has requested you to be a mentee for <a href='/projects/#{params[:project_id]}' class='feed-project-link'>#{@project.name}</a></p>"

    if params[:mentee_id]
        @project.update(mentor_pending: true, mentor_id: params[:set_mentor_id])
      if @project.save!
          puts 'request sent'
          Feed.create(user_id: params[:mentee_id], project_id: params[:project_id], message: mentor_request_message)
        else
          puts 'Your comment couldn''t be saved.....'
      end

    else
        @project.update(mentee_pending: true, mentee_id: params[:set_mentee_id])
      if @project.save!
        puts 'request sent'
        Feed.create(user_id: params[:mentor_id], project_id: params[:project_id], message: mentee_request_message)
      else
        puts 'Your comment couldn''t be saved.....'
      end
    end

    puts "updated"

    # respond_to do |format|
    #   if @project.update(project_params)
    #     format.html { redirect_to @project, notice: 'Project was successfully updated.' }
    #     format.json { render :show, status: :ok, location: @project }
    #   else
    #     format.html { render :edit }
    #     format.json { render json: @project.errors, status: :unprocessable_entity }
    #   end
    # end

  end

  def destroy
    @project.destroy
    respond_to do |format|
      format.html { redirect_to projects_url, notice: 'Project was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_project
    @project = Project.find(params[:id])
  end

  def project_params
    params.require(:project).permit(:name, :description, :project_url, :start_date, :finish_date, :mentor_id, :public)
  end

end
