class HomeController < ApplicationController

  def index
    @categories = Category.all
  end

  def about
  end

  def help
  end

  
end
