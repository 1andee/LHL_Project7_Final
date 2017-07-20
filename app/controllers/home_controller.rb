class HomeController < ApplicationController
  def index
    # @users = User.search_by_name(params[:query])
    # @users = User.search_by_skill(params[:query])

    # data for view to display partial profile in search
    @users = User.search_by_skill(params[:query]).includes([:skills, :skill_users, :mentee_projects, :mentor_projects])
    # data for view to display partial projects on homepage
    @project_users = User.all.includes([:skills, :skill_users, :mentee_projects, :mentor_projects])
  end
end
