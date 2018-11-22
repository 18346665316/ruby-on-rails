class UsersController < ApplicationController
  def new
    @user = User.new
  end
  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user
    else
      render :new
    end
  end
  def show
    begin
      @user = User.find(params[:id])
    rescue
      @user = false
    end
    # debugger
    if !!@user
       @user
    else
      render html:'没有此用户'
    end
  end
  def index
  end
  def delete
    @user = User.find(params[:id])
    if !!@user
      @user.delete
    else
      render html:'没有此用户'
    end
  end
  private
  def user_params
    params.require(:user).permit(:name,  :email, "password", :password_confirmation)
  end
end
