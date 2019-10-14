class UserMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def welcome_email
     @user = params[:user]
     @url  = 'https://mailer-test-arata.herokuapp.com/login'
     @about = 'https://mailer-test-arata.herokuapp.com'
     mail(to: @user.email, subject: 'Welcome to My Blog')
  end

end
