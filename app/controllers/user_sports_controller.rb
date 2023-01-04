class UserSportsController < ApplicationController

  def new
    @sport = Sport.all
    @user_sport = UserSport.new
  end

  def create
    @user_sport = UserSport.new(params[:user_sport_params])
    @user_sport.save
    redirect_to user_path
  end

  private

  def user_sport_params
    params.require(:user_sport).permit(:name)
  end
end
