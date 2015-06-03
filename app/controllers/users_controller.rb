class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
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
    redirect_to user_path(params[:id])
  end

  def index
    @users = User.all
  end

  private
  def users_params
    params.require(:user).permit(:name, :email, :location, :bio, skill_ids: [])
  end

end
