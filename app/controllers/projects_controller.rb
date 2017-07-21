class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]

  def index
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
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

private
  # Use callbacks to share common setup or constraints between actions.
  def set_project
    @project = Project.find(params[:id])
  end

end
