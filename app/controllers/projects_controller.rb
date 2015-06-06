class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
  end

  def edit
    @project = Project.find(params[:id])
    @users = User.all 
  end

  def update
    # binding.pry
    project = Project.find(params[:id])
    project.update(new_event_params)
    start_date = DateTime.new(params[:project][:events]["start_date(1i)"].to_i,params[:project][:events]["start_date(2i)"].to_i,params[:project][:events]["start_date(3i)"].to_i,params[:project][:events]["start_date(4i)"].to_i,params[:project][:events]["start_date(5i)"].to_i)
    end_date = DateTime.new(params[:project][:events]["end_date(1i)"].to_i,params[:project][:events]["end_date(2i)"].to_i,params[:project][:events]["end_date(3i)"].to_i,params[:project][:events]["end_date(4i)"].to_i,params[:project][:events]["end_date(5i)"].to_i)
    event = Event.create(name: params[:project][:events][:name], description: params[:project][:events][:description], address: params[:project][:events][:address],start_date: start_date, end_date: end_date)
    project.events << event
    # redirect_to project_path(project.id)
  end

  private

  def new_event_params
    params.require(:project).permit(:name, :neighborhood, :description)
  end



end
