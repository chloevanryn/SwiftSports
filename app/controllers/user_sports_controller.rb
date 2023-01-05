class UserSportsController < ApplicationController
  def new
    @user = current_user
    @sport = Sport.all
    @level = Level.all
    @user_sport = UserSport.new
  end

  def create
    @user_sport = UserSport.new
    @sport = Sport.find_by(name: params[:user_sport][:sport])
    @user_sport.user = current_user
    # @level = Level.find(params[:user_sport][:level_id])
    @user_sport.sport = @sport
    # @user_sport.level = @level

    if @user_sport.save
      redirect_to user_path(current_user)
    else
      render :new, status: :unprocessable_entity
    end
  end
end
