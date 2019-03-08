class Api::SearchController < ApplicationController
  def filter
    @projects = Project.where("LOWER(title) LIKE '%#{params[:string].downcase}%'")
# debugger
    render 'api/projects/index'
  end
end

