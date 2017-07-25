class HomeController < ApplicationController
    def index
        # @users = User.search_by_name(params[:query])
        # @users = User.search_by_skill(params[:query])
        @feeds = Feed.all.order(created_at: :desc).includes(:projects)
        @projects = Project.all
        @project = Project.find_by_id(params[:id])
        # data for view to display partial profile in search
        # @users = User.search_by_skill(params[:query]).includes([:skills, :skill_users, :mentee_projects, :mentor_projects]).page(params[:page]).per(3)
        @users = User.text_search(params[:query],nil,nil).includes([:skills, :skill_users, :mentee_projects, :mentor_projects]).page(params[:page]).per(3)
        # data for view to display partial projects on homepage
        @project_users = User.all.includes([:skills, :skill_users, :mentee_projects, :mentor_projects])

        if current_user
            @my_mentees = Project.where(mentor_id: current_user.id).pluck(:mentee_id).compact
            @my_mentors = Project.where(mentee_id: current_user.id).pluck(:mentor_id).compact

            @all_relationships = @my_mentees + @my_mentors << current_user.id

            @all_relationships.uniq
            # @activity_list =  Feed.where(user_id: @all_relationships).order(created_at: :desc)
            @feeds = Feed.where("user_id IN (?) and created_at > ? ", @all_relationships, Time.at(params[:after].to_i))

        end

    end
end