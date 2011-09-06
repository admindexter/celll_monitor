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

  it "should have an About page at '/about'" do
    get '/about'
    response.should have_selector('title', :content => "About")
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

end

