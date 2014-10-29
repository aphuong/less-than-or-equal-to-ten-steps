require 'rails_helper'

RSpec.describe UsersController, :type => :controller do 

  let(:valid_attributes) {
    @valid_attributes = {
      fname: "Anh",
      lname: "LaRusso",
      email: "apl@gmail.com",
      password: "123"
    }
  }

  let(:session_id) {{ user_id: 1 }}

  let(:invalid_attributes) {
    @invalid_attributes = {
      email: nil
    }
  }

  let(:valid_attributes2) {
    @valid_attributes2 = {
      fname: "Bob",
      lname: "Ross",
      email: "bob@gmail.com",
      password: "123"
    }
  }

  let(:session_id2) {{ user_id: 2 }}


  describe "GET show" do
    it "assigns all users as @users" do 
      user = User.create! valid_attributes
      get :show, {id: user.to_param}, session_id
      expect(assigns(:users)).to eq([user])
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new user" do
        expect {
          post :create, {user: valid_attributes}, session_id
        }.to change(User, :count).by(1)
      end

      it "assigns a newly created user as @user" do
        post :create, {user: valid_attributes}, session_id
        expect(assigns(:user)).to be_a(User)
        expect(assigns(:user)).to be_persisted
      end

      it "redirects to the created user" do
        post :create, {user: valid_attributes}, session_id
        expect(response).to redirect_to(User.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsave user as @user" do
        post :create, {user: invalid_attributes}, session_id
        expect(assigns(:user)).to be_a_new(User)
      end

      it "redirects to 'root' path" do
        post :create, {user: invalid_attributes}, session_id
        expect(response).to redirect_to(root_url)
      end
    end
  end


  describe "POST follow" do
    it "creates a new relationship" do
      current_user = User.create! (valid_attributes)
      user2 = User.create! (valid_attributes2)
      expect {
        post :follow, {id: user2.to_param}, session_id
      }.to change(Relationship, :count).by(1)
    end

    it "assigns the new relationship as @rel" do
      current_user = User.create! (valid_attributes)
      user2 = User.create! (valid_attributes2)
      post :follow, {id: user2.to_param}, session_id
      expect(assigns(:follow)).to be(@rel)
    end

    it "redirects to that user's path" do
      current_user = User.create! (valid_attributes)
      user2 = User.create! (valid_attributes2)
      post :follow, {id: user2.to_param}, session_id
      expect(response).to redirect_to(user2)
    end
  end

  describe "POST unfollow" do
    it "assigns a relationship as @rel" do 
      current_user = User.create! (valid_attributes)
      user2 = User.create! (valid_attributes2)
      post :follow, {id: user2.to_param}, session_id
      expect(assigns(:unfollow)).to be(@rel)
    end

    it "destroys the requested relationship" do
      current_user = User.create! (valid_attributes)
      user2 = User.create! (valid_attributes2)
      post :follow, {id: user2.to_param}, session_id
      expect {
        post :unfollow, {id: user2.to_param}, session_id
      }.to change(Relationship, :count).by(-1)
    end

    it "redirects to that user's path" do
      current_user = User.create! (valid_attributes)
      user2 = User.create! (valid_attributes2)
      post :follow, {id: user2.to_param}, session_id
      post :unfollow, {id: user2.to_param}, session_id
      expect(response).to redirect_to(user2)
    end
  end
end

