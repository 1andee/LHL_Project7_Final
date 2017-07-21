class SkillsController < ApplicationController

# In the view
  # form_tag('/skills', method: :post, remote: true)
  def create
  # /1231/skills?name=guitar&type=mentee
  # /1231/skills?name=rails&type=mentor

    origin = params[:origin]
    skill_name = params[:skill_name]

    if origin == "user"

      @skill = Skill.find_by(skill_name: skill_name)
      if @skill.blank?
        @skill = Skill.create(skill_name: skill_name)
      end

      @skill_user = SkillUser.find_by(skill_id: @skill.id, user_id: current_user.id, mentor: params[:mentor])

      if @skill_user.blank?
        @user_skill = SkillUser.create!(skill_id: @skill.id, user_id: current_user.id, mentor: params[:mentor])
      end
      redirect_to user_path(current_user.id)

    else
      project_id = params[:project_id]


      @skill = Skill.find_by(skill_name: skill_name)
      if @skill.blank?
        @skill = Skill.create(skill_name: skill_name)
      end

      @project_skill = ProjectSkill.find_by(skill_id: @skill.id, project_id: project_id)
      message = "<p>[Project #{params[:project_name]}] User #{current_user.name} added the skill #{skill_name}.</p>"
      Feed.create(user_id: current_user.id, project_id: project_id, message: message)

      if @project_skill.blank?
        @project_skill = ProjectSkill.create!(skill_id: @skill.id, project_id: project_id)
      end
      redirect_to project_path(project_id)

    end
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

    origin = params[:origin]

    if origin == "user"

      user_skill = SkillUser.find_by(skill_id: params[:id], mentor: params[:mentor], user_id: current_user.id)
      user_skill.destroy

      redirect_to user_path(current_user.id)

    else

      project_id = params[:project_id]

      project_skill = ProjectSkill.find_by(skill_id: params[:id], project_id: project_id)
      project_skill.destroy
      message = "<p>[Project #{params[:project_name]}] User #{current_user.name} deleted the skill #{params[:skill_name]}.</p>"
      Feed.create(user_id: current_user.id, project_id: project_id, message: message)


      redirect_to project_path(project_id)

    end

  end

end
