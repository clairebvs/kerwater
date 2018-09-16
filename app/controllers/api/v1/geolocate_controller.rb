class Api::V1::GeolocateController < ApplicationController

  def index
    geo = LocationPresenter.new
    render json: geo.locations
  end

end
