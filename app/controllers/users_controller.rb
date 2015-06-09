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
    # @user.update(name:users_params[:name], email:users_params[:email], location:users_params[:location], bio:users_params[:bio])
    # users_params[:skill_id].each do |id|
    #   skill_object = Skill.find(id)
    #   @user.skills << skill_object
    # end
    @user.update(users_params)
    binding.pry
    redirect_to user_path(params[:id])
  end

  def index
    @users = User.sort_by_hours
  end

  private
  def users_params
    params.require(:user).permit(:name, :email, :location, :bio, :photo, {skill_ids: []}, {topic_ids: []})
  end

end
