class HomeController < ApplicationController
  def index
    # @test = Skill.all
    # @users = User.search_by_name(params[:query])
    @users = User.search_by_skill(params[:query])
    @users_id = User.search_by_skill(params[:query]).pluck(:id)

    @mentor_skills_id = SkillUser.where(user_id: @users_id, mentor: true).pluck(:skill_id)
    @mentor_skills = Skill.where(id: @mentor_skills_id)
  end
end
