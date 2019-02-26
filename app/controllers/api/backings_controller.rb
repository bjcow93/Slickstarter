class Api::BackingsController < ApplicationController
   def create
    @backing = Backing.new(backing_params)
    @backing.user_id = current_user.id
    @backing.project_id = params[:id]

    if @backing.save
      render "/api/projects/show"
    else
      render json: @backing.errors.full_messages
    end
  end
  
  def index 
    @backings = Backing.all
    render :index
  end 
  
  def destroy
  end


  private

  def backing_params
    params.require(:backing).permit(:user_id, :project_id, :pledge_amount)
  end
end