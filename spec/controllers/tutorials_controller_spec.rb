require 'rails_helper'

RSpec.describe TutorialsController, :type => :controller do 

  let(:valid_t_attr) {
    @valid_attributes = {
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

  describe "GET index" do
    it "assigns all tutorials to @tutorials" do
      t = Tutorial.create! valid_t_attr
      get :index, {id: t.to_param}
      expect(assigns(t)).to eq(@tutorials)
    end

    it "instanciates a new user as @user" do
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

  describe "GET create" do
  
  end

end
