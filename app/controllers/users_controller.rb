class UsersController < ApplicationController
  # before_action :set_user, only: [:edit]

  def index
    if params[:query].present?
      @users = User.multisearch(params[:query])
    else
      @users = User.all
    end
  end

  def edit
    @user = current_user
    redirect_to @user
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
