class EventsController < ApplicationController
<<<<<<< HEAD
  def index
    @sporting_events = SportingEvent.all
  end

  def show
    @sporting_event = SportingEvent.find(params[:id])
=======

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    @sport = Sport.find(params[:event][:sport_id])
    @event.user = current_user
    @event.sport = @sport

    if @event.save
      redirect_to @event
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def event_params
    params.require(:event).permit(:title, :description, :location, :date, :time)
>>>>>>> 9ce982831deb9729be9d954a2d698fafbfb7417f
  end
end
