class UsersController < ApplicationController

  layout 'general'

  def show
    @user = User.find(params[:id])
  end

  def new
    @title = "Sign up"
  end

end

