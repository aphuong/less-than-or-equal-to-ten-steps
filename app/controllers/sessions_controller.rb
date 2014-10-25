class SessionsController < ApplicationController

  def create
    @user = User.authenticate(params[:email], params[:password])

    if @user
      session[:user_id] = @user.id
      flash[:notice] = "Logged in!"
      redirect_to @user
    else
      flash[:alert] = "There was a problem with the log in. Try again."
      redirect_to root_url
    end
  end

  def destroy
    @user = (session[:user_id])
    session[:user_id] = nil
    redirect_to root_url
  end

end