class UserMailer < ApplicationMailer

  def welcome_email(user)
    @user = user
    @url  = 'http://localhost:3000/authenticate'
    mail(to: @user.email, subject: 'New User Registration - Pairwise.com')
  end

end
