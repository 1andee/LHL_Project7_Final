class ArchiveController < ApplicationController

  before_action :user_lookup

  def user_lookup
    @user = User.find(params[:user_id])
  end

  def index
    @project_users = User.includes([:skills, :skill_users, :mentee_projects, :mentor_projects]).where(users: {id: @user.id}, projects: {:completion_status_id => [2, 3]} )

    # @project_completion_statuses = Project
    #                 .joins("INNER JOIN completion_statuses ON projects.completion_status_id = completion_statuses.id")
    #                 .select("projects.*, completion_statuses.name")
    #                 .where(project_id: @project.id)
    #                 .order(id: :desc)
    #
    # @project_goals = Goal
    #                 .joins("INNER JOIN completion_statuses ON goals.completion_status_id = completion_statuses.id")
    #                 .select("goals.*, completion_statuses.name")
    #                 .where(project_id: @project.id)
    #                 .order(id: :desc)



  end

end
