class RatingsController < ApplicationController

  def new
    @rating = Rating.new
    @user = User.find(params[:user_id])
  end

  def create
    @rating = Rating.new(rating_params)
    @user = User.find(params[:user_id])
    @rating.user = @user

      if @rating.save
        redirect_to @user
      else
        render :new, status: :unprocessable_entity
      end
  end

  def rating_params
    params.require(:rating).permit(:comment)
  end
end
