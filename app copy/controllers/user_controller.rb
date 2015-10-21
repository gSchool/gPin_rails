class UserController < ApplicationController
  before_action :require_login

  def index
  	@users = User.all
  end

  def new
  	@user = User.new
  end

  def create
  	@user = User.new user_params
  	if @user.save
  		redirect_to user_path, flash: {success: "Welcome to the site #{@user.username}"}
  	else
  		render :new
  	end
  end

  def show
  end

  def edit
  end

  def update 
  	@user.update user_params
  	if @user.save
  		redirect_to user_path, flash: {success: "Your information has been updated."}
  	else
  		render :edit
  	end
  end

  def destroy
  	@user.destroy
  	redirect_to users_path, alert: "You have been deleted"
  end

  private

  # def find_one
  # 	@user = User.find params[:id]
  # end

end
