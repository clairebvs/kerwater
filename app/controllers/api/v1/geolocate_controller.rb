class Api::V1::GeolocateController < ApplicationController

  def index
    projects = SearchPresenter.new.projects
    country = projects[0].country
    google_service = GoogleGeocodeService.new
    # pins = ProjectService.new()
    render json: google_service.coordinates
  end

end
