class EventsController < ApplicationController

  def update
    @event = Event.find(params[:id])
    @user = current_user
    @event.users << @user
    respond_to do |format|
      format.js
      format.html{redirect_to project_path(event.project.id)}
    end
    
  end

  def show
    @event = Event.find(params[:id])
  end
end
