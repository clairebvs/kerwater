class Api::V1::GeolocateController < ApplicationController

  def index
    # google_service = GoogleGeocodeService.new
    geo = SearchPresenter.new
    @geolocation = geo.locations
    @projects = geo.projects
  
    respond_to do |format|
      format.json { render :json =>
        { :geolocation => @geolocation,
          :projects => @projects
        }
      }
    end
    # render json: google_service.coordinates
    # render json: geo.locations
  end

end
