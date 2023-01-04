class EventsController < ApplicationController

  def index
    @events = Event.all
  end

  def my_events
    @events = Event.where(user_id: current_user)
  end

  def new
    @event = Event.new
  end

    def create
      @event = Event.new(event_params)
      @sport = Sport.find(params[:event][:sport_id])
      @event.user = current_user
      @level = Level.find(params[:event][:level_id])
      @event.sport = @sport
      @event.level = @level

      if @event.save
        redirect_to @event
      else
        render :new, status: :unprocessable_entity
      end
    end

  def show
    @event = Event.find(params[:id])
  end


  private

  def event_params
    params.require(:event).permit(:title, :description, :location, :date, :time)
  end
end
