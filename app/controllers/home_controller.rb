class HomeController < ApplicationController
  def index
    # @users = User.search_by_name(params[:query])
    # @users = User.search_by_skill(params[:query])
    @users = User.search_by_skill(params[:query]).includes([:skills, :skill_users, :mentee_projects, :mentor_projects])
  end
end
