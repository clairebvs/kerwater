require 'rails_helper'

describe "Geolocate API" do
  it "returns a JSON response with location of the country" do
    peru = {
             lat: -9.18,
             lng: -75.01
           }
    cameroon = { lat: 7.37,
                 lng: 12.35
                }

    get "/api/v1/geolocate"

    require "pry"; binding.pry
    expect(response.status).to eq 200
    geolocation = JSON.parse(response.body, symbolize_names: true)

    # expect(geolocation.count).to eq(10)
    # expect(geolocation[:lat]).to eq(peru[:lat])
    # expect(geolocation[:lng]).to eq(peru[:lng])
    # expect(geolocation[:lat]).to eq(cameroon[:lat])
    # expect(geolocation[:lng]).to eq(cameroon[:lng])
  end
end
