require 'spec_helper'

describe UsersController do

  render_views

  describe "GET 'show'" do

    before(:each) do
      @user = Factory(:user)
    end

    it "should be successful" do
      get :show, :id => @user
      response.should be_success
    end

    it "should find the right user" do
      get :show, :id => @user
      assigns(:user).should == @user
    end

    it "should have the right title" do
      get :show, :id => @user
      response.should have_selector("title", :content => @user.name)
    end

    it "should display the user path" do
      get :show, :id => @user
      response.should have_selector("a", :content => user_path(@user))
    end

    it "should include the user's email" do
      get :show, :id => @user
      response.should have_selector("span", :content => @user.email)
    end

    it "should have a profile image" do
      get :show, :id => @user
      response.should have_selector("span>img", :class => "gravatar")
    end
  end

  describe "GET 'new'" do

    it "should be successful" do
      get :new
      response.should be_success
    end

    it "should have the right title" do
      get :new
      response.should have_selector("title", :content => "Sign up")
    end
  end

end

