class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    redirect_to users_path

  end

private
  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end

end
