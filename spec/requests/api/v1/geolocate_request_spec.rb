require 'rails_helper'

describe "Geolocate API" do
  it "returns a JSON response with location of the country" do
    peru = create(:country, lat: -9.18, lng: -75.01)

    get '/api/v1/geolocate?address=peru'

    expect(response.status).to eq 200
    geolocation = JSON.parse(response.body, symbolize_names: true)
    expect(geolocation[:location][:lat]).to eq(peru.lat)
    expect(geolocation[:location][:lng]).to eq(peru.lng)
  end
end
