class Api::V1::GeolocateController < ApplicationController

  def index
    # google_service = GoogleGeocodeService.new
    geo = SearchPresenter.new
    # render json: google_service.coordinates
    render json: geo.locations
  end

end
