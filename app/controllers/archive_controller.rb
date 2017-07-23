class ArchiveController < ApplicationController

  before_action :set_user

  def index
    @project_users_completed = User.includes([:skills, :skill_users, :mentee_projects, :mentor_projects]).where(users: {id: @user.id}, projects: {:completion_status_id => [2]} )

    @project_users_cancelled = User.includes([:skills, :skill_users, :mentee_projects, :mentor_projects]).where(users: {id: @user.id}, projects: {:completion_status_id => [3]} )
  end

  private

  def set_user
    @user = User.find(params[:user_id])
  end

end
