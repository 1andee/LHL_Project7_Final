class HomeController < ApplicationController
  def index
    # @users = User.search_by_name(params[:query])
    # @users = User.search_by_skill(params[:query])
    @feeds = Feed.all.order(created_at: :desc).includes(:projects)
    @projects = Project.all
    @project = Project.find_by_id(params[:id])
    # data for view to display partial profile in search
    # @users = User.search_by_skill(params[:query]).includes([:skills, :skill_users, :mentee_projects, :mentor_projects]).page(params[:page]).per(3)
    @users = User.text_search(params[:query]).includes([:skills, :skill_users, :mentee_projects, :mentor_projects]).page(params[:page]).per(3)
    # data for view to display partial projects on homepage
    @project_users = User.all.includes([:skills, :skill_users, :mentee_projects, :mentor_projects])
  end
end
