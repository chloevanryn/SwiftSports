class UserSportsController < ApplicationController
  def new
    @user = current_user
    @sport = Sport.all
    # @level = Level.all
    @user_sports = current_user.sports.map { |user_sport| user_sport.name }
    @user_sport = UserSport.new
    @collection = UserSport::SPORTS.map { |name| [name, name, disabled: @user_sports.include?(name)] }
  end

  def create
    @sports = Sport.where(name: params[:user_sport][:sport])
    # @level = Level.find(params[:user_sport][:level_id])

    if @sports == @user_sport
      puts :scope
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
end
