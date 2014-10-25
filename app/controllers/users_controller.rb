class UsersController < ApplicationController
  before_action :set_user, only: [:show]

  def show
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      # flash[:notice] = "Welcome, #{@user.fname}!"
      redirect_to @user
    else
      # flash[:alert] = "Sorry, something went wrong. Please try again."
      redirect_to :root
    end
  end

  private

  def user_params
    params.require(:user).permit(:fname, :lname, :email, :password, :password_confirmation)
  end

  def set_user
    @user = User.find(params[:id])
  end 
end
