class EventsController < ApplicationController

  def update
    event = Event.find(params[:id])
    user = current_user
    event.users << user
    redirect_to project_path(event.project.id)
  end

  def show
    @event = Event.find(params[:id])
  end
end
