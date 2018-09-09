class ProjectsController < ApplicationController

  def index
    @presenter = SearchPresenter.new
  end

end
