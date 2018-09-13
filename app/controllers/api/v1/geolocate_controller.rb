class Api::V1::GeolocateController < ApplicationController

  def index
    render json: Country.all
  end
  
end
