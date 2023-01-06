class ChatroomsController < ApplicationController

  def new_for_event
    @chatroom = Chatroom.new
    @event = Event.find(params[:event_id])
  end

  def new_for_group
    @chatroom = Chatroom.new
    @group = Group.find(params[:group_id])
  end

  def create_for_event
    @chatroom = Chatroom.new(chatroom_params)
    @event = Event.find(params[:event_id])
    @chatroom.event = @event

      if @chatroom.save
        redirect_to @event
      else
        render :new, status: :unprocessable_entity
      end
  end

  def create_for_group
    @chatroom = Chatroom.new(chatroom_params)
    @group = Group.find(params[:event_id])
    @chatroom.group = @group

      if @chatroom.save
        redirect_to @group
      else
        render :new, status: :unprocessable_entity
      end
  end

  def show
    @chatroom = Chatroom.find(params[:id])
  end

  def chatroom_params
    params.require(:chatroom).permit(:name)
  end

end
