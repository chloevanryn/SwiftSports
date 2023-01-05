class UserSportsController < ApplicationController
  def new
    @user = current_user
    @sport = Sport.all
    @user_sport = UserSport.new
  end

  def create
    @user_sport = UserSport.new(params[:user_sport_params])
    if @user_sport.save
      redirect_to user_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def user_sport_params
    params.require(:user_sport).permit(:name)
  end
end
