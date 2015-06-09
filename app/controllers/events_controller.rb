class EventsController < ApplicationController

  def update
    @event = Event.find(params[:id])
    @user = current_user
    @event.users << @user
    respond_to do |format|
      format.js
      format.html{redirect_to project_path(@event.project.id)}
    end 
  end

  def leave_event
    @event_to_delete = Event.find(params[:id])
    if @event_to_delete.users.include?(current_user)
      current_user.events.delete(@event_to_delete)
    end
    respond_to do |format|
      format.js
      format.html{redirect_to user_path(current_user.id)}
    end 
  end

  def show
    @event = Event.find(params[:id])
  end

   def destroy
    event = Event.find(params[:id])
    event.destroy
    redirect_to project_path(params[:project_id])
  end

end

