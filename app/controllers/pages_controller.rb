class PagesController < ApplicationController

  layout 'general'

  def home
    @title = "Home"
    @user = current_user

    @random_sixteen_mentors = User.where({:role => :mentor}).limit(16).all.shuffle

    @random_sixteen_apprentices = User.where({:role => :apprentice}).limit(16).all.shuffle

    if signed_in?
      @micropost = Micropost.new
      @feed_items = current_user.feed.paginate(:page => params[:page])
    end

    render :layout => "home"
  end

  def contact
    @random_sixteen_mentors = User.where({:role => :mentor}).limit(16).all.shuffle

    @random_sixteen_apprentices = User.where({:role => :apprentice}).limit(16).all.shuffle

    @title = "Contact"
  end

  def faq
    @random_sixteen_mentors = User.where({:role => :mentor}).limit(16).all.shuffle

    @random_sixteen_apprentices = User.where({:role => :apprentice}).limit(16).all.shuffle

    @title = "Faq"
  end

  def help
    @random_sixteen_mentors = User.where({:role => :mentor}).limit(16).all.shuffle

    @random_sixteen_apprentices = User.where({:role => :apprentice}).limit(16).all.shuffle

    @title = "Help"
  end

  def about
    @random_sixteen_mentors = User.where({:role => :mentor}).limit(16).all.shuffle

    @random_sixteen_apprentices = User.where({:role => :apprentice}).limit(16).all.shuffle

    @title = "About"
  end

  def community
    @random_sixteen_mentors = User.where({:role => :mentor}).limit(16).all.shuffle

    @random_sixteen_apprentices = User.where({:role => :apprentice}).limit(16).all.shuffle

    @title = "Community"
  end

  def gallery
    @random_sixteen_mentors = User.where({:role => :mentor}).limit(16).all.shuffle

    @random_sixteen_apprentices = User.where({:role => :apprentice}).limit(16).all.shuffle

    @title = "Gallery"
  end

  def multimedia
    @random_sixteen_mentors = User.where({:role => :mentor}).limit(16).all.shuffle

    @random_sixteen_apprentices = User.where({:role => :apprentice}).limit(16).all.shuffle

    @title = "Multimedia"
  end

  def ranking
    @random_sixteen_mentors = User.where({:role => :mentor}).limit(16).all.shuffle

    @random_sixteen_apprentices = User.where({:role => :apprentice}).limit(16).all.shuffle

    @title = "Ranking"
  end

  def blog
    @random_sixteen_mentors = User.where({:role => :mentor}).limit(16).all.shuffle

    @random_sixteen_apprentices = User.where({:role => :apprentice}).limit(16).all.shuffle

    @title = "Blog"
  end

end

