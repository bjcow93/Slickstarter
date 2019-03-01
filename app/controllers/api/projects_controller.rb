class Api::ProjectsController < ApplicationController
  before_action :require_logged_in, only: [:create]


  # def new
  #   @project = Project.new();
  # end 

  def create
    @project = Project.new(project_params)
    @project.user_id = current_user.id;

    if @project.save
      render "/api/projects/show"
      
    else
      render json: @project.errors.full_messages
    end
   
  end

  def index 
    @projects = Project.all
    render :index
    # render json: @projects
  end 

   def show
    @project = Project.find(params[:id])
  end
  
  
  private

  def project_params
    params.require(:project).permit(
      :title, 
      :description, 
      :funding_goal, 
      :start_date, 
      :end_date,
      :image
      )
  end
end