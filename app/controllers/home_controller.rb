class HomeController < ApplicationController

  def index
    @categories = Category.all
    @user = User.new
  end

  def about
    @user = User.new
  end
  
end
