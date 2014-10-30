require 'rails_helper'

RSpec.describe TutorialsController, :type => :controller do 

  let(:valid_t_attr) {
    @valid_t_attr = {
      title: "How To Bake A Pie",
      user_id: 1,
      category_id: 1,
      supplies: "Apples, sugar, flour"
    }
  }

  let(:valid_attributes) {
    @valid_attributes = {
      fname: "Anh",
      lname: "LaRusso",
      email: "apl@gmail.com",
      password: "123"
    }
  }

  let(:session_id) {{ user_id: 1 }}

  let(:step_attributes) {
    @step_attributes = {
      body: "hello world"
    }
  }

  describe "GET index" do
    it "assigns all tutorials to @tutorials" do
      t = Tutorial.create! valid_t_attr
      get :index, {id: t.to_param}
      expect(assigns(t)).to eq(@tutorials)
    end

    it "instantiates a new user as @user" do
      get :index
      expect(assigns(:user)).to be_a(User)
    end
  end


  describe "GET show" do
    it "assigns the requested tutorial as @tutorial" do
      tutorial = Tutorial.create! valid_t_attr
      get :show, {id: tutorial.to_param}
      expect(assigns(:tutorial)).to eq(tutorial)
    end

    it "instantiates a new user as @user" do
      tutorial = Tutorial.create! valid_t_attr
      get :show, {id: tutorial.to_param}
      expect(assigns(:user)).to be_a(User)
    end
  end


  describe "GET new" do
    it "instantiates a new tutorial as @tutorial" do
      tutorial = Tutorial.create! valid_t_attr
      get :new, {id: tutorial.to_param}
      expect(assigns(:tutorial)).to be_a(Tutorial)
    end

    it "instantiates the category a tutorial belongs to" do
      tutorial = Tutorial.create! valid_t_attr
      category = Category.create!
      tutorial.category = category
      get :new, {id: category.to_param}
      expect(assigns(:tutorial).category).to be_a(Category)
    end

    it "assigns all categories to @categories" do
      category = Category.create!
      get :new, {id: category.to_param}
      expect(assigns(:category)).to eq(@categories)
    end
  end


  describe "POST create" do
    it "creates a new tutorial" do
      current_user = User.create! (valid_attributes)
      tutorial = Tutorial.create! valid_t_attr
      tutorial.user_id = current_user.id
      expect {
        post :create, {tutorial: valid_attributes}, session_id
      }.to change(Tutorial, :count).by(1)
    end

    it "assigns a newly created tutorial as @tutorial" do
      current_user = User.create! (valid_attributes)
      tutorial = Tutorial.create! valid_t_attr
      tutorial.user_id = current_user.id
      post :create, {tutorial: valid_attributes}, session_id
      expect(assigns(:tutorial)).to be_a(Tutorial)
    end

    it "redirects to the create step path" do
      current_user = User.create! (valid_attributes)
      tutorial = Tutorial.create! valid_t_attr
      tutorial.user_id = current_user.id
      post :create, {tutorial: valid_attributes}, session_id
      expect(response).to redirect_to(new_tutorial_step_url(Tutorial.last.id))
    end
  end

  describe "PUT update" do

    let(:new_t_attributes) {
      @new_t_attributes = {
        title: "How To Bake A Cake",
        user_id: 1,
        category_id: 1,
        supplies: "icing, sugar, flour"
      }
    }

    it "updates the requested tutorial" do
      current_user = User.create! (valid_attributes)
      tutorial = Tutorial.create! valid_t_attr
      tutorial.user_id = current_user.id
      put :update, {id: tutorial.to_param, tutorial: new_t_attributes}, session_id
      tutorial.reload  
      expect(tutorial.title).to eq("How To Bake A Cake")
      expect(tutorial.supplies).to eq("icing, sugar, flour")
    end

    it "assigns the requested tutorial as @ tutorial" do
      current_user = User.create! (valid_attributes)
      tutorial = Tutorial.create! valid_t_attr
      tutorial.user_id = current_user.id
      put :update, {id: tutorial.to_param, tutorial: new_t_attributes}, session_id
      expect(assigns(:tutorial)).to be_a(Tutorial)
    end

    it "redirects to the tutorial" do
      current_user = User.create! (valid_attributes)
      tutorial = Tutorial.create! valid_t_attr
      tutorial.user_id = current_user.id
      put :update, {id: tutorial.to_param, tutorial: new_t_attributes}, session_id
      expect(response).to redirect_to(show_tutorial_url(Tutorial.last.id))
    end
  end

  describe "GET new_step" do
    it "assigns a tutorial to @tutorial" do
      current_user = User.create! (valid_attributes)
      tutorial = Tutorial.create! valid_t_attr
      tutorial.user_id = current_user.id
      get :new_step, {id: tutorial.to_param}, session_id
      expect(assigns(:tutorial)).to be_a(Tutorial)
    end

    it "instantiates a new step" do 
      current_user = User.create! (valid_attributes)
      tutorial = Tutorial.create! valid_t_attr
      tutorial.user_id = current_user.id
      get :new_step, {id: tutorial.to_param}, session_id
      expect(assigns(:step)).to be_a(Step)
    end
  end

  # describe "POST create_step" do
  #   it "creates a new step" do
  #     current_user = User.create! (valid_attributes)
  #     tutorial = Tutorial.create! valid_t_attr
  #     tutorial.user_id = current_user.id
  #     step = Step.create! step_attributes
     
  #     expect {
  #       post :create_step, {step: step_attributes}, session_id
  #     }.to change(Step, :count).by(1)
  #   end
  # end

end



