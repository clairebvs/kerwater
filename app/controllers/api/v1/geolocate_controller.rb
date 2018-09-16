class Api::V1::GeolocateController < ApplicationController

  def index
    # google_service = GoogleGeocodeService.new
    geo = SearchPresenter.new
    projects = geo.projects
    require "pry"; binding.pry
    render json: projects
    # @geoloc = geo.locations
    # @geolocation = geo.locations

    # respond_to do |format|
    #   format.json { render :json =>
    #     { :geolocation => @geoloc,
    #       :projects => @projects
    #     }
    #   }
    # end
    # render json: google_service.coordinates
    # require "pry"; binding.pry
    # render json: geo.locations
    # render json: geo.projects
  end

end
