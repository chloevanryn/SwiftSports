class UsersController < ApplicationController
  # before_action :set_user, only: [:edit]

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  private

  def set_user
    @user = current_user
  end

  def user_params
    params.require(:user).permit(:username, :email, :photo)
  end
  # add params require for adding a picture
end
