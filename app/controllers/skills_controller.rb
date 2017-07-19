class SkillsController < ApplicationController

# In the view
  # form_tag('/skills', method: :post, remote: true)
  def create
  # /1231/skills?name=guitar&type=mentee
  # /1231/skills?name=rails&type=mentor
    @skill = Skill.find_by(skill_name: params[:skill_name])
    if @skill.blank?
      @skill = Skill.create(skill_name: params[:skill_name])
    end
    puts current_user
    @user_skill = SkillUser.create!(skill_id: @skill.id, user_id: current_user.id)
    redirect_to user_path(current_user.id)
    # render 'skill_created'
    # return
    # // /skills/skill_created.js.erb
    # $('#container_mentor_skills').append("<li id='<%= @skill.id %>'><%= @skill.skill_name %></li>")
    # rescue ActiveRecord error
    # Do something else
  end

  def destroy
  # /1231/skills/1231
  # /1231/skills/12412

  end

end
