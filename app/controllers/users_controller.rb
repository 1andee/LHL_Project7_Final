# IF ANY CHANGES ARE MADE HERE, RESTART SERVER

class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
  end

  def show
    @mentor_skills_id = User.find(@user.id).skill_users.where(mentor: true).pluck(:skill_id)
    @mentor_skills = Skill.where(id: @mentor_skills_id).order(skill_name: :asc)

    @mentee_skills_id = User.find(@user.id).skill_users.where(mentor: false).pluck(:skill_id)
    @mentee_skills = Skill.where(id: @mentee_skills_id).order(skill_name: :asc)

    @mentor_projects = Project.where(mentor_id: @user.id)

    @mentee_projects = Project.where(mentee_id: @user.id)
  end

  def new
    @user = User.new
  end

  def edit
  end

  def create
    @user = User.new(user_params)

    if @user.save
      # If user is successfully added to table
      Rails.logger.info(@user)
      Rails.logger.info(@user.id)
      session[:user_id] = @user.id
      Rails.logger.info(session[:user_id])
      Rails.logger.info("--------------------------------------------")
      Rails.logger.info("created new user, set cookie, redirecting...")
      Rails.logger.info("--------------------------------------------")
      flash[:success] = 'Your account has been created'
      redirect_to root_path
      # redirect_back(fallback_location: root_path)
    else
      # If the user can't be added
      Rails.logger.info("-------------------------------")
      Rails.logger.info("new user couldn't be saved.....")
      Rails.logger.info("-------------------------------")
      flash[:warning] = @user.errors.full_messages.join(' // ')
      redirect_to '/authenticate'
    end

  end

  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end



  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:avatar, :name, :email, :password, :password_confirmation, :location, :linkedin_url, :github_url, :other_site, :twitter, :slack_name)
  end
end
