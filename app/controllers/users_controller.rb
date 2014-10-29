class UsersController < ApplicationController
  before_action :set_user, only: [:show, :follow, :unfollow]

  def show
    @users = User.all
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      # flash[:notice] = "Welcome, #{@user.fname}!"
      redirect_to @user
    else
      flash[:alert] = "Sorry, something went wrong. Please try again."
      redirect_to :root
    end
  end

  def follow     
    @rel = Relationship.new(follower_id: current_user.id, followed_id: @user.id)
    @rel.save
    redirect_to user_url(@user)
  end

  def unfollow
    @rel = Relationship.where(follower_id: current_user.id, followed_id: @user.id).first
    @rel.destroy
    redirect_to user_url(@user)
  end

  private

  def user_params
    params.require(:user).permit(:fname, :lname, :email, :password, :password_confirmation)
  end

  def set_user
    @user = User.find(params[:id])
  end 
end
