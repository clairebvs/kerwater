class ProjectsController < ApplicationController

  def index
    # @presenter = SearchPresenter.new
    # session[:projects] = @presenter.service.water_projects
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
  end
end
