class GoalsController < ApplicationController
  before_action :set_goal, only: [:show, :edit, :update, :destroy]

  def create
    @goal = Goal.create(title: params[:goal_title], project_id: params[:project_id], completion_status_id: 1)
    message = "<p>[Project #{params[:project_name]}] User #{current_user.name} added the goal #{params[:goal_title]}.</p>"
    Feed.create(user_id: current_user.id, project_id: params[:project_id], message: message)

    if @goal.save
      # If goal is successfully added to table
      Rails.logger.info(@goal)
      Rails.logger.info(@goal.id)
      # session[:user_id] = @goal.id
      Rails.logger.info(session[:goal_id])
      Rails.logger.info("--------------------------------------------")
      Rails.logger.info("created new goal, redirecting...")
      Rails.logger.info("--------------------------------------------")
      # flash[:success] = 'Your goal has been created'

    else
      # If the goal can't be added
      Rails.logger.info("-------------------------------")
      Rails.logger.info("new goal couldn't be saved.....")
      Rails.logger.info("-------------------------------")
      flash[:warning] = @goal.errors.full_messages.join(' // ')
    end

    redirect_to project_path(params[:project_id])

  end

  def update
    puts "cheguei no update!"
  end

  def destroy
    @goal = Goal.find(params[:goal_id])
    goal_comments = Comment.where(goal_id: @goal.id)

    if !goal_comments.present?
      @goal.destroy
      message = "<p>[Project #{params[:project_name]}] User #{current_user.name} deleted the goal #{params[:goal_title]}.</p>"
      Feed.create(user_id: current_user.id, project_id: params[:project_id], message: message)

    else
      flash[:warning] = "The goal '#{@goal.title}' has comments and can not be deleted. Try to change the status."
    end

    redirect_to project_path(params[:project_id])

  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_goal
    @goal = Goal.find(params[:goal_id])
  end



end
