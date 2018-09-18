require 'rails_helper'

describe "Geolocate API" do
  it "returns a JSON response with location of the country" do
    project = create_list(:project, 10)
  
    get "/api/v1/geolocate"

    expect(response.status).to eq 200

    geolocation = JSON.parse(response.body, symbolize_names: true)

    expect(geolocation.count).to eq(10)
    expect(geolocation[0][:name]).to eq(project[0].name)
    expect(geolocation[0][:latitude]).to eq(project[0].latitude)
    expect(geolocation[1][:name]).to eq(project[1].name)
    expect(geolocation[1][:latitude]).to eq(project[1].latitude)
  end
end
