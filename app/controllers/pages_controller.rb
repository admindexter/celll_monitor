class PagesController < ApplicationController
  def home
    @title = "Home"
  end

  def contact
    @title = "Contact"
  end

  def faq
    @title = "Faq"
  end

  def help
    @title = "Help"
  end

  def about
    @title = "About"
  end

end

