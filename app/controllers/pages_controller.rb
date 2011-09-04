class PagesController < ApplicationController

  layout 'general'

  def home
    @title = "Home"

    render :layout => "home"
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

  def community
    @title = "Community"
  end

  def gallery
    @title = "Gallery"
  end

  def multimedia
    @title = "Multimedia"
  end

  def ranking
    @title = "Ranking"
  end

  def blog
    @title = "Blog"
  end

end

