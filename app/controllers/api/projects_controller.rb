class Api::ProjectsController < ApplicationController
  before_action :require_logged_in, only: [:create]


  def create
    @project = Project.new(project_params)
    @project.user_id = current_user.id;

    # if @project.save
    #   render "api/projects/show" OR render :show
    # else
    #   render json: @projects.errors.full_messages
    # end
   
  end

  def index 
    @projects = Project.all
    render :index
  end 

   def show
    # sleep 0.5
    @project = Project.find(params[:id])
  end
  
  
  private

  def project_params
    params.require(:user).permit(
      :title, 
      :description, 
      :funding_goal, 
      :start_date, 
      :end_date
      )
  end
end