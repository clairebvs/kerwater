class ProjectsController < ApplicationController

  def index
    @presenter = SearchPresenter.new
    session[:projects] = @presenter.service.water_projects
  end

  def show
    @project = Project.new(session[:projects][params[:id].to_sym])
    session[:projects][@project.id] = @project.id
  end
end
