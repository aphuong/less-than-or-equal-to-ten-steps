class TutorialsController < ApplicationController

  def categorized
    @user = User.new
    @category = Category.find(params[:id])
  end

  def index
    @user = User.new
    @tutorials = Tutorial.all
  end

  def search
    @user = User.new
    tutorials = Tutorial.all
    @keyword = params[:query]

    @tutorials = tutorials.select do |tut|
      words = tut.title.downcase.split(' ')
      words.include? @keyword.downcase
    end

  end

  def show
    @user = User.new
    @tutorial = Tutorial.find(params[:id])
  end

  def new
    @tutorial = Tutorial.new
    @tutorial.category = Category.new
    @categories = Category.all
  end

  def create
    @tutorial = Tutorial.new(tutorial_params)
    @tutorial.user_id = current_user.id

    if @tutorial.save
      flash[:notice] = "New tutorial just created!"
      redirect_to new_tutorial_step_path(@tutorial)
    else
      flash[:alert] = "Sorry, something went wrong. Please try again."
      render :new
    end
  end

  def new_step
    @tutorial = Tutorial.find(params[:id])
    @step = Step.new
  end

  def create_step
    @tutorial = Tutorial.find(params[:id])

    if @tutorial.steps.count < 10
      @step = Step.new(step_params)
      @step.save
      @tutorial.steps << @step
      flash[:notice] = "New step just created!"
      redirect_to new_tutorial_step_path(@tutorial)
    else
      flash[:alert] = "Sorry, something went wrong. Please try again."
      render @tutorial
    end
  end

  private

  def tutorial_params
    params.require(:tutorial).permit(:main_image, :title, :supplies, :category_id)
  end

  def step_params
    params.require(:step).permit(:body, :step_image, :position)
  end
end