class SessionsController < ApplicationController

  def create
    @user = User.find_by_email(params[:session][:email])
    # If the user exists AND the password entered is correct.
    if @user && @user.authenticate(params[:session][:password])
      # Save the user id inside the browser cookie.
      Rails.logger.info(@user)
      Rails.logger.info(@user.id)
      session[:user_id] = @user.id
      Rails.logger.info(session[:user_id])
      Rails.logger.info("--------------------------------------------")
      Rails.logger.info("user recognized, cookie set, redirecting....")
      Rails.logger.info("--------------------------------------------")
      flash[:success] = 'Welcome back'
      redirect_to root_path
      # redirect_back(fallback_location: root_path)
    else
      # If login doesn't work
      Rails.logger.info("-------------------------------------")
      Rails.logger.info("login not recognized, redirecting....")
      Rails.logger.info("-------------------------------------")
      flash[:warning] = 'Please try your username/password again'
      redirect_to '/authenticate'
    end
  end

  # Destroy session & redirect to main page as anonymous user
  def destroy
    Rails.logger.info("Ending session for user:")
    Rails.logger.info(session[:user_id])
    session[:user_id] = nil
    Rails.logger.info("---------------------------------")
    Rails.logger.info("cookie destroyed, redirecting....")
    Rails.logger.info("---------------------------------")
    flash[:info] = 'You have successfully logged out'
    redirect_to root_path
  end

end
