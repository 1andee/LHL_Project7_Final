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
        @project = Project.new({name: project_params[:name], description: project_params[:description], project_url: project_params[:project_url], start_date: project_params[:start_date], finish_date: project_params[:finish_date], public: project_params[:public], mentor_pending: false, mentor_id: current_user.id, completion_status_id: 1})
    else
       @project = Project.new({name: project_params[:name], description: project_params[:description], project_url: project_params[:project_url], start_date: project_params[:start_date], finish_date: project_params[:finish_date], public: project_params[:public], mentee_pending: false, mentee_id: current_user.id, completion_status_id: 1})
    end

    if @project.save!
      flash[:success] = 'Your project has been created'
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

    if params[:project_id].present?
      @project = Project.find(params[:project_id])
    end
    project_id = @project.id
    accepted = params[:accepted]


    if accepted.present? && accepted == "false"
    # it cames from show project
    # user has declined the mentorship
      if params[:mentor_pending].present?
        # "mentor declined"
        @project.update(mentor_pending: nil, mentor_id: nil)
        if @project.save
          flash[:success] = "Declined invitation to be a mentor for this project."
          mentor_declined_message = "<p>#{current_user.name} has declined the invitation to be a mentor for the following project: <a href='/projects/#{params[:project_id]}' class='feed-project-link'>#{@project.name}</a></p>"
          Feed.create(user_id: current_user.id, project_id: project_id, message: mentor_declined_message)
          redirect_to :action => 'show'
        else
          flash[:error] = "Error. Your decline could not be sent."
          render :action => 'show'
        end
      elsif params[:mentee_pending].present?
        # "mentee decline"
        @project.update(mentee_pending: nil, mentee_id: nil)
        if @project.save
          flash[:success] = "Declined invitation to be a mentee for this project."
          mentee_declined_message = "<p>#{current_user.name} has declined the invitation to be a mentee for the following project: <a href='/projects/#{params[:project_id]}' class='feed-project-link'>#{@project.name}</a></p>"
          Feed.create(user_id: current_user.id, project_id: project_id, message: mentee_declined_message)
          redirect_to :action => 'show'
        else
          flash[:error] = "Error. Your decline could not be sent."
          render :action => 'show'
        end
      end

    else
    # it cames from profile page

      if params[:mentee_id]
      # ask for mentor
        @mentor = User.find(params[:set_mentor_id])
          @project.update(mentor_pending: true, mentor_id: params[:set_mentor_id])
        if @project.save!
            mentor_request_message = "<p>#{current_user.name} has requested #{@mentor.name} to be mentor for the following project: <a href='/projects/#{params[:project_id]}' class='feed-project-link'>#{@project.name}</a></p>"
            Feed.create(user_id: params[:mentee_id], project_id: project_id, message: mentor_request_message)
            redirect_to project_path(@project), :action => 'show'
            flash[:success] = "Sent #{@mentor.name} an invitation to be a mentor for the project."
          else
            flash[:error] = "Error. Invitation could not be sent."
            puts 'Invitation could not be sent.'
        end

      elsif params[:mentor_id]
      # ask for mentee
        @mentee = User.find(params[:set_mentee_id])
          @project.update(mentee_pending: true, mentee_id: params[:set_mentee_id])
        if @project.save!
          mentee_request_message = "<p>#{current_user.name} has sent to #{@mentee.name} an invitation to be a mentee for the following project: <a href='/projects/#{params[:project_id]}' class='feed-project-link'>#{@project.name}</a></p>"
          Feed.create(user_id: params[:mentor_id], project_id: project_id, message: mentee_request_message)
          redirect_to project_path(@project), :action => 'show'
          flash[:success] = "Sent #{@mentee.name} an invitation to be a mentee for the project."
        else
          flash[:error] = "Error. Invitation could not be sent."
          puts 'Invitation could not be sent.'
        end

      elsif params[:mentee_pending]
      # mentee accepted
        @project.update(mentee_pending: false)
        @mentee = User.find(@project.mentee_id)
        if @project.save!
          mentee_response_message = "<p>#{@mentee.name} has accepted an invitation to be a mentee for the following project: <a href='/projects/#{params[:project_id]}' class='feed-project-link'>#{@project.name}</a></p>"
          Feed.create(user_id: @mentee.id, project_id: project_id, message: mentee_response_message)
          redirect_to :action => 'show'
          flash[:success] = "Accepted invitation to be a mentee for this project."
        else
          flash[:error] = "Error. Your acceptance could not be sent."
          render :action => 'show'
        end

      elsif params[:mentor_pending]
      # mentor accepted
        @project.update(mentor_pending: false)
        @mentor = User.find(@project.mentor_id)
        if @project.save
          mentor_response_message = "<p>#{@mentor.name} has accepted an invitation to be a mentor for the following project: <a href='/projects/#{params[:project_id]}' class='feed-project-link'>#{@project.name}</a></p>"
          Feed.create(user_id: @mentor.id, project_id: project_id, message: mentor_response_message)
          flash[:success] = "Accepted invitation to be a mentor for this project."
          redirect_to :action => 'show'
        else
          flash[:error] = "Error. Your acceptance could not be sent."
          render :action => 'show'
        end

      else
      # It cames from edit page
        @project.update(name: project_params[:name], description: project_params[:description], project_url: project_params[:project_url], start_date: project_params[:start_date], finish_date: project_params[:finish_date], public: project_params[:public], completion_status_id: project_params[:completion_status_id])
puts "editing project"
        if @project.save
          flash[:success] = "Project updated."
          redirect_to :action => 'show'
        else
          flash[:error] = "Error. Project couldn't be updated."
          render :action => 'show'
        end

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
    params.require(:project).permit(:name, :description, :project_url, :start_date, :finish_date, :mentee_pending, :mentor_pending, :mentee_id, :mentor_id, :public, :completion_status_id)
  end

end


