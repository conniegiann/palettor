class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    
    if @user.save
      session[:user_id] = user.id
      redirect_to root_path    
    else
      render :new
    end
  end
    
  def show
    set_user
  end


  def edit
  end

  def update
  end 

private

  def set_user
    @user = User.find params[:id]
  end

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation, :email)
  end

end
