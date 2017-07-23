class CommentsController < ApplicationController

  def create
    project_id = params[:project_id].to_i
    project = Project.find(project_id)
    comment = params[:comment]
    params[:action_required].nil? ? action_required = false : action_required = true
    project_or_goal = params[:project_or_goal]
    goal_id = params[:goal_id].to_i
    user_id = current_user.id

    project.mentor_id == user_id ? background_class = "mentor" : background_class = "mentee"

    if project_or_goal == "project"
      @comment = Comment.new({comment: comment, action_required: action_required, user_id: user_id, project_id: project_id})

      if action_required
        message = "<p class='#{background_class}'>[Project #{project.name}] User #{current_user.name} added a new comment. <a href='/projects/#{project_id}' class='alert_message'>ANSWER REQUIRED - click to answer.</a></p>"
      else
        message = "<p class='#{background_class}'>[Project #{project.name}] User #{current_user.name} added a new comment.</p>"
      end

    else
      @comment = Comment.new({comment: comment, action_required: action_required, user_id: user_id, project_id: project_id, goal_id: goal_id})
      goal_title = Goal.find(goal_id).title

      if action_required
        message = "<p class='#{background_class}'>[Project #{project.name} - Goal #{goal_title}] User #{current_user.name} added a new comment. <a href='/projects/#{project_id}' class='alert_message'>ANSWER REQUIRED - click to answer.</a></p>"

      else
        message = "<p class='#{background_class}'>[Project #{project.name} - Goal #{goal_title}] User #{current_user.name} added a new comment.</p>"
      end

    end

    if @comment.save!
      flash[:success] = 'Your comment has been created'
      Feed.create(user_id: user_id, project_id: project_id, message: message)
    else
      flash[:warning] = @comment.errors.full_messages.join('Your comment couldn''t be saved.....')
    end

    redirect_to project_path(project_id)
  end

end

