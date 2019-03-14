class Api::SearchController < ApplicationController
  def filter
    @projects = Project.where("LOWER(title) LIKE '%#{params[:string].downcase}%'")
    render 'api/projects/index'
  end
end