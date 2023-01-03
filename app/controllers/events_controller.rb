class EventsController < ApplicationController
  def index
    @sporting_events = SportingEvent.all
  end

  def show
    @sporting_event = SportingEvent.find(params[:id])
  end
end
