class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @events = Event.all
    @suggested_events = @user.suggested_events
    @suggested_projects = @user.suggested_projects
  end

  def edit
     @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(users_params)
    binding.pry
    redirect_to user_path(params[:id])
  end

  def index
    @users = User.sort_by_hours
  end

  def email_volunteer
    user = User.find(params[:id])
    project = Project.find(params[:project_id])
    event = Event.find(params[:event_id])
    UserMailer.contact_volunteer(user,project,event).deliver_now!
    respond_to do |format|
      format.js
      format.html{redirect_to user_path(current_user.id)}
    end 
  end

  private
  def users_params
    params.require(:user).permit(:name, :email, :location, :bio, :photo, {skill_ids: []}, {topic_ids: []})
  end

end
