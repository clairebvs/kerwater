class Api::V1::GeolocateController < ApplicationController

  def index
    projects = SearchPresenter.new.projects
    # country = projects[0].country
    google_service = GoogleGeocodeService.new
    x = google_service.projects_countrie
    # pins = ProjectService.new()
    render json: x
  end

end
