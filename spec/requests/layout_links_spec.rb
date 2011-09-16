require 'spec_helper'
describe "LayoutLinks" do

  it "should have a Home page at '/'" do
    get '/'
    response.should have_selector('title', :content => "Home")
  end

  it "should have a Contact page at '/contact'" do
    get '/contact'
    response.should have_selector('title', :content => "Contact")
  end

  it "should have a Help page at '/help'" do
    get '/help'
    response.should have_selector('title', :content => "Help")
  end

  it "should have a Faq page at '/faq'" do
    get '/faq'
    response.should have_selector('title', :content => "Faq")
  end

  it "should have a Community page at '/community'" do
    get '/community'
    response.should have_selector('title', :content => "Community")
  end

  it "should have an Gallery> page at '/gallery'" do
    get '/gallery'
    response.should have_selector('title', :content => "Gallery")
  end

  it "should have a Multimedia page at '/multimedia'" do
    get '/multimedia'
    response.should have_selector('title', :content => "Multimedia")
  end

  it "should have an Ranking> page at '/ranking'" do
    get '/ranking'
    response.should have_selector('title', :content => "Ranking")
  end

  it "should have a Blog page at '/blog'" do
    get '/blog'
    response.should have_selector('title', :content => "Blog")
  end

  it "should have a signup page at '/signup'" do
    get '/signup'
    response.should have_selector('title', :content => "Sign up")
  end

it "should have the right links on the layout" do

    visit root_path

    click_link "Sign Up as a Celll-Monitor member"
    response.should have_selector('title', :content => "Sign up")

    click_link "Contact"
    response.should have_selector('title', :content => "Contact")

    click_link "Faq"
    response.should have_selector('title', :content => "Faq")

    click_link "Help"
    response.should have_selector('title', :content => "Help")

    click_link "Community"
    response.should have_selector('title', :content => "Community")

    click_link "Gallery"
    response.should have_selector('title', :content => "Gallery")

    click_link "Multimedia"
    response.should have_selector('title', :content => "Multimedia")

    click_link "Ranking"
    response.should have_selector('title', :content => "Ranking")

    click_link "Blog"
    response.should have_selector('title', :content => "Blog")
  end

  describe "when not signed in" do
    it "should have a signin link" do
      visit root_path
      response.should have_selector("a", :href => signin_path,
                                         :content => "Sign in")
    end
  end

  describe "when signed in" do

    before(:each) do
      @user = Factory(:user)
      visit signin_path
      fill_in :email,    :with => @user.email
      fill_in :password, :with => @user.password
      click_button
    end

    it "should have a signout link" do
      visit root_path
      response.should have_selector("a", :href => signout_path,
                                         :content => "Sign out")
    end

    it "should have a profile link" do
      visit root_path
      response.should have_selector("a", :href => user_path(@user),
                                         :content => "Profile")
    end

    it "should display username" do
      visit root_path
      response.should have_selector('div', :content => "#{@user.name}")
    end
  end
end

