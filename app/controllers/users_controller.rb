class UsersController < ApplicationController
  def index
    @user = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)

    redirect_to users_path
  end

  def show
    @user = User.all
  end

  def delete
    @user.avatar = nil

    @user.save
  end

  def destroy
  end


  private 

  def user_params
    params.require(:user).permit(:avatar)
  end
end
