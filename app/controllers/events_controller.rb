class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @events = Event.all
    @markers = @events.geocoded.map do |event|
      {
        lat: event.latitude,
        lng: event.longitude,
        info_window: render_to_string(partial: "info_window", locals: {event: event}),
        image_url: helpers.asset_url("event_logo.png")
      }
    end
  end

  def my_events
    @events = Event.where(user_id: current_user)
  end

  def show
    @event = Event.find(params[:id])
    @participating_user = ParticipatingUser.new
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

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    @event.update(event_params)
    redirect_to @event
  end

  def destroy
    @event = Event.find(params[:id])
    if @event.user == current_user
      @event.destroy
      redirect_to events_path, notice: "Event successfully deleted."
    else
      redirect_to event_path(@event), alert: "You can only delete events that you have created."
    end
  end

  private

  def set_event
    @event = Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:title, :description, :location, :date, :time)
  end
end
