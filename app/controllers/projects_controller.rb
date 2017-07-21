# IF ANY CHANGES ARE MADE HERE, RESTART SERVER

class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]

  def index
    @projects = Project.all
  end

  def show
    @project_skills_id = Project.find(@project.id).project_skills.pluck(:skill_id)
    @project_skills = Skill.where(id: @project_skills_id).order(skill_name: :asc)

    @project_goals = Goal
                    .joins("INNER JOIN completion_statuses ON goals.completion_status_id = completion_statuses.id")
                    .select("goals.*, completion_statuses.name")
                    .where(project_id: @project.id)
                    .order(id: :desc)

  end

  def new
    @project = Project.new
  end

  def edit
  end

  def create
     if project_params[:mentor_id] == "Mentor"
        @project = Project.new({name: project_params[:name], description: project_params[:description], project_url: project_params[:project_url], start_date: project_params[:start_date], finish_date: project_params[:finish_date], public: project_params[:public], mentee_pending: true, mentor_pending: false, mentor_id: current_user.id})
    else
       @project = Project.new({name: project_params[:name], description: project_params[:description], project_url: project_params[:project_url], start_date: project_params[:start_date], finish_date: project_params[:finish_date], public: project_params[:public], mentee_pending: false, mentor_pending: true, mentee_id: current_user.id})
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
    respond_to do |format|
      if @project.update(project_params)
        format.html { redirect_to @project, notice: 'Project was successfully updated.' }
        format.json { render :show, status: :ok, location: @project }
      else
        format.html { render :edit }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
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
