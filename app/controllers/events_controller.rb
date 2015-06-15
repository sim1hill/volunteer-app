class EventsController < ApplicationController

  def update
    start_date = DateTime.new(params[:event]["start_date(1i)"].to_i,params[:event]["start_date(2i)"].to_i,params[:event]["start_date(3i)"].to_i,params[:event]["start_date(4i)"].to_i,params[:event]["start_date(5i)"].to_i)
    end_date = DateTime.new(params[:event]["end_date(1i)"].to_i,params[:event]["end_date(2i)"].to_i,params[:event]["end_date(3i)"].to_i,params[:event]["end_date(4i)"].to_i,params[:event]["end_date(5i)"].to_i)
    @event = Event.find(params[:id])
    @event.update(name: params[:event][:name], description: params[:event][:description], address: params[:event][:address],start_date: start_date, end_date: end_date)
    params[:event][:skill_ids].each do |skill_id|
      if skill_id != ""
      skill = Skill.find(skill_id)
      if skill != nil && !@event.skills.include?(skill)
        @event.skills << skill
      end
    end
  end
  redirect_to event_path(@event.id)
  end

  def join_event
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
    if params[:user_id]
      @user = User.find(params[:user_id])
      if @event_to_delete.users.include?(@user)
        @user.events.delete(@event_to_delete)
      end
    else
      if @event_to_delete.users.include?(current_user)
        current_user.events.delete(@event_to_delete)
      end
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

  def marker
    event = Event.find(params[:id])
    # @marker = [40.7048872,-74.0123737]
    @marker = [event.latitude, event.longitude]
    respond_to do |format|
      format.json {render :marker}
    end
  end

  def edit
    @event = Event.find(params[:id])
    if current_user.id != @event.project.user_id
      redirect_to project_path
    end
  end


end

