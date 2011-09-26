class PagesController < ApplicationController

  layout 'general'

  def home
    @title = "Home"
    @user = current_user

    if signed_in?
      @micropost = Micropost.new
      @feed_items = current_user.feed.paginate(:page => params[:page])
    end

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

