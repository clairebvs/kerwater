class Api::V1::GeolocateController < ApplicationController
  def index
    render json: Project.all
  end
end
