class TutorialsController < ApplicationController

  def index
    @user = User.new
    @tutorials = Tutorial.all
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

  def update
    @tutorial = Tutorial.find(params[:id])
    if @tutorial.update(tutorial_params)
      respond_to do |format|
        format.html { redirect_to show_tutorial_path(@tutorial) }
        format.json { respond_with_bip(@tutorial) }
      end
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

  def update_step
    @tutorial = Tutorial.find(params[:tutorial_id])
    @step = Step.find(params[:step_id])
    if @step.update(step_params)
      respond_to do |format|
        format.html { redirect_to @step }
        format.json { respond_with_bip(@step) }
      end
    end
  end

  def categorized
    @user = User.new
    @category = Category.find(params[:id])
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

  private

  def tutorial_params
    params.require(:tutorial).permit(:main_image, :title, :supplies, :category_id)
  end

  def step_params
    params.require(:step).permit(:body, :step_image, :position)
  end
end