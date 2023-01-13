class UserSportsController < ApplicationController
  def new
    @user = current_user
    @sport = Sport.all
    # @level = Level.all
    @user_sports = current_user.sports.map { |user_sport| user_sport.name }
    @user_sport = UserSport.new
    @collection = UserSport::SPORTS.map do |name|
      [name, name, checked: @user_sports.include?(name)]
    end
  end

  def create
    @sports = Sport.where(name: params[:user_sport][:sport])
    # @level = Level.find(params[:user_sport][:level_id])

    if @sports == @user_sport
    else
      @sports.each do |sport|
      @user_sport = UserSport.new
      @user_sport.user = current_user
      @user_sport.sport = sport
      # @user_sport.level = Level.first
      @user_sport.save
      end
      redirect_to user_path(current_user)
      # @user_sport.level = @level
    end
  end

  def edit
    @user = User.find(params[:user_id])
    @user_sport = @user.user_sports.find(params[:id])
    @collection = UserSport::SPORTS.map { |name| [name, name, checked: @user_sport.include?(name)] }
  end

  def update
    @user = User.find(params[:user_id])
    @user_sport = UserSport.find(params[:id])
    if @user_sport.update(user_sport_params)
      redirect_to user_path(@user_sport.user)
    else
      render 'edit'
    end
    @collection = UserSport::SPORTS.map { |name| [name, name, checked: @user_sport.include?(name)] }
  end


  private

  def user_sport_params
    params.require(:user_sport).permit(:sport)
  end
end
