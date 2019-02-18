class Api::CategoriesController < ApplicationController

def create
    @category = Category.new(category_params)

    # if @category.save
    #   render "/api/projects/show"
    # else
    #   render json: @project.errors.full_messages
    # end
   
  end

  def show
    @category = Category.find(params[:id])
  end

  private
  def category_params
    params.require(:category).permit(:name, :description)
  end
end