class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      UserMailer.with(user: @user).welcome_email.deliver_later
      redirect_to posts_path
    else
      redirect_to root_path
    end
  end

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def login_page
    @user = User.new
  end

  def login
    if @user = User.find_by(email: params[:email], password: params[:password])
      session[:user_id] = @user.id
    redirect_to posts_path
    else
      redirect_to users_path
    end
  end

  def logout
    session[:user_id] = nil
    redirect_to login_path
  end

  private
  def user_params
    params.require(:user).permit(:username, :email, :password)
  end

end
