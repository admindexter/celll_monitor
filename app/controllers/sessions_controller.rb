class SessionsController < ApplicationController

  layout 'general'

  def new
    @title = "Sign in"

    @random_sixteen_mentors = User.where({:role => :mentor}).limit(16).all.shuffle

    @random_sixteen_apprentices = User.where({:role => :apprentice}).limit(16).all.shuffle
  end

  def create
    @random_sixteen_mentors = User.where({:role => :mentor}).limit(16).all.shuffle

    @random_sixteen_apprentices = User.where({:role => :apprentice}).limit(16).all.shuffle

    user = User.authenticate(params[:session][:email],
                             params[:session][:password])
    if user.nil?
      flash.now[:error] = "Invalid email/password combination."
      @title = "Sign in"
      render 'new'
    else
      sign_in user
      redirect_back_or user
    end
  end

  def destroy
    sign_out
    redirect_to root_path
  end
end

