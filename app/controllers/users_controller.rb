class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @events = Event.all
    @suggested_events = @user.suggested_events
    @suggested_projects = @user.suggested_projects
  end

  def edit
     @user = User.find(params[:id])
     @skills_users = SkillsUser.find_by(user_id: params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(users_params)
    @skill = Skill.find(params[:skills_user][:skill])
    @skills_users = SkillsUser.find_by_user_id_and_skill_id(params[:id],params[:skills_user][:skill])
    if @skills_users == nil
      @user.skills << @skill
      @skills_users.update(skill_description: params[:skills_user][:skill_description])
    else
      @skills_users.update(skill_description: params[:skills_user][:skill_description])
    end
    redirect_to user_path(params[:id])
  end

  def index
    if current_user == nil
      redirect_to new_user_session_path
    end
    @users = User.sort_by_hours
    @skills = Skill.all
  end

  def email_volunteer
    @user = User.find(params[:id])
    if params[:project_id] == "from user show page"
      sender_id = current_user.id
      UserMailer.contact_for_skills(@user,sender_id).deliver_now!
    else
      project = Project.find(params[:project_id])
      @event = Event.find(params[:event_id])
      UserMailer.contact_volunteer(@user,project,@event).deliver_now!
    end
    respond_to do |format|
      format.js
      format.html{redirect_to user_path(current_user.id)}
    end 
  end

  private
  def users_params
    params.require(:user).permit(:name, :email, :location, :bio, :photo, :photo_cache, {skill_ids: []}, {topic_ids: []})
  end

end
