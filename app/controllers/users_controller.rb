class UsersController < ApplicationController
  before_filter :authenticate,  :only => [:index, :edit, :update, :destroy]
  before_filter :correct_user,  :only => [:edit, :update]
  before_filter :admin_user,    :only => :destroy

  layout 'general'

  def index
    @random_sixteen_mentors = User.where({:role => :mentor}).limit(16).all.shuffle

    @random_sixteen_apprentices = User.where({:role => :apprentice}).limit(16).all.shuffle

    @title = "All users"
    @users = User.paginate(:page => params[:page])
  end

  def show
    @user = User.find(params[:id])
    @microposts = @user.microposts.paginate(:page => params[:page])
    @title = @user.name

    @role = @user.role

    @random_sixteen_mentors = User.where({:role => :mentor}).limit(16).all.shuffle

    @random_sixteen_apprentices = User.where({:role => :apprentice}).limit(16).all.shuffle

    render :layout => 'profile'
  end

  def new
    @user = User.new
    @title = "Sign up"

    @random_sixteen_mentors = User.where({:role => :mentor}).limit(16).all.shuffle

    @random_sixteen_apprentices = User.where({:role => :apprentice}).limit(16).all.shuffle
  end

  def create
    @random_sixteen_mentors = User.where({:role => :mentor}).limit(16).all.shuffle

    @random_sixteen_apprentices = User.where({:role => :apprentice}).limit(16).all.shuffle

    @user = User.new(params[:user])
    if @user.save
      sign_in @user
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user
    else
      @title = "Sign up"
      render 'new'
    end
  end

  def edit
    @random_sixteen_mentors = User.where({:role => :mentor}).limit(16).all.shuffle

    @random_sixteen_apprentices = User.where({:role => :apprentice}).limit(16).all.shuffle

    @title = "Edit user"
  end

  def update
    @random_sixteen_mentors = User.where({:role => :mentor}).limit(16).all.shuffle

    @random_sixteen_apprentices = User.where({:role => :apprentice}).limit(16).all.shuffle

    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      flash[:success] = "Profile updated."
      redirect_to @user
    else
      @title = "Edit user"
      render 'edit'
    end
  end

  def destroy
    @random_sixteen_mentors = User.where({:role => :mentor}).limit(16).all.shuffle

    @random_sixteen_apprentices = User.where({:role => :apprentice}).limit(16).all.shuffle

    User.find(params[:id]).destroy
    flash[:success] = "User destroyed."
    redirect_to users_path
  end


  private

    def authenticate
      deny_access unless signed_in?
    end

    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_path) unless current_user?(@user)
    end

    def admin_user
      redirect_to(root_path) unless current_user.admin?
    end
end

