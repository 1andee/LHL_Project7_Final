# IF ANY CHANGES ARE MADE HERE, RESTART SERVER

class ArchiveController < ApplicationController
  before_action :set_user

  def index
    @project_mentor_completed = User.includes([:skills, :skill_users, :mentee_projects, :mentor_projects]).where(users: {id: @user.id}, mentor_projects_users: {:completion_status_id => [2]})
    @project_mentee_completed = User.includes([:skills, :skill_users, :mentee_projects, :mentor_projects]).where(users: {id: @user.id}, projects: {:completion_status_id => [2]})

    @project_mentor_cancelled = User.includes([:skills, :skill_users, :mentee_projects, :mentor_projects]).where(users: {id: @user.id}, mentor_projects_users: {:completion_status_id => [3]})
    @project_mentee_cancelled = User.includes([:skills, :skill_users, :mentee_projects, :mentor_projects]).where(users: {id: @user.id}, projects: {:completion_status_id => [3]})

  end

  private

  def set_user
    @user = User.find(params[:user_id])
  end

  def user_params
    params.require(:user)
  end

end
