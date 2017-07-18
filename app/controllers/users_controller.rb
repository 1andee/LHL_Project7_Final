class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /users
  # GET /users.json
  def index
    # @users = User.search_by_name(params[:query])
    @users = User.search_by_skill(params[:query])
  end

  # GET /users/1
  # GET /users/1.json
  def show
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
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
      # temporary redirect to authenticate until pages are built out
      flash[:success] = 'Your account has been created'
      redirect_to '/home/index'
      # redirect_back(fallback_location: root_path)
    else
      # If the user can't be added
      Rails.logger.info("-------------------------------")
      Rails.logger.info("new user couldn't be saved.....")
      Rails.logger.info("-------------------------------")
      flash[:warning] = @user.errors.full_messages.join(' // ')
      redirect_to '/authenticate'
    end

    # FROM ORIGINAL RAILS INITIALIZATION / SETUP:
    # respond_to do |format|
    #   if @user.save
    #     format.html { redirect_to @user, notice: 'User was successfully created.' }
    #     format.json { render :show, status: :created, location: @user }
    #   else
    #     format.html { render :new }
    #     format.json { render json: @user.errors, status: :unprocessable_entity }
    #   end
    # end

  end

  # FROM ORIGINAL RAILS INITIALIZATION / SETUP:
  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
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

  # FROM ORIGINAL RAILS INITIALIZATION / SETUP:
  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end



  private
  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :location, :linkedin_url, :github_url, :other_site, :twitter, :slack_name)
  end
end
