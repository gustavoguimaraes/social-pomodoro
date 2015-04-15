class EventsController < ApplicationController
  before_action :set_event, only: [:show, :update, :destroy]

  def index
    @events = Event.all
    render "/events"
  end

  def show
    render "/event"
  end

  def create
    @event = Event.new(event_params)

    if @event.save
      render_success("Event was successfully created.")
    else
      render_error(@event.descriptive_error)
    end
  end

  def update
    if @event.update(event_params)
      render_success("Event was successfully updated.")
    else
      render_error(@event.descriptive_error)
    end
  end

  def destroy
    @event.destroy
    render_success("Event was successfully destroyed.")
  end

  private

  def set_event
    @event = Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(Event::PERMITTED_PARAMS)
  end
end
