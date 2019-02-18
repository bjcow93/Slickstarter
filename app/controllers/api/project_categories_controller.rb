class Api::ProjectCategoriesController < ApplicationController
   def create
    @project_category = ProjectCategory.new(project_category_params)
    # @project_category.project_id = current_user.id
    # @project_category.chirp_id = params[:id]
    # unless @project_category.save
    #   flash[:errors] = @project_category.errors.full_messages
    # end
    # redirect_to chirp_url(params[:id])
  end
  
  private

  def project_category_params
    params.require(:project_category).permit(:project_id, :category_id)
  end
end