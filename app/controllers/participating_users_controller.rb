class ParticipatingUsersController < ApplicationController
  def create
    @event = Event.find(params[:event_id])
    @participating_user = ParticipatingUser.new
    @participating_user.user = current_user
    @participating_user.event = @event
    if @participating_user.save
      redirect_to @event, notice: 'You have successfully signed up for this event.'
    else
      render 'events/show'
    end
  end
end
