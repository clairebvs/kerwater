require 'rails_helper'

describe "Geolocate API" do
  it "returns a JSON response with location of the country" do

    peru = { name: 'Peru',
             latitude: -9.189967,
             longitude: -75.01
           }
    cameroon = { name: 'Cameroon',
                latitude: 7.37,
                longitude: 12.35
                }

    get "/api/v1/geolocate"

    expect(response.status).to eq 200
    geolocation = JSON.parse(response.body, symbolize_names: true)

    expect(geolocation.count).to eq(10)
    expect(geolocation[0][:name]).to eq('Cameroon')
    expect(geolocation[0][:latitude]).to eq(cameroon[:lat])
    expect(geolocation[1][:name]).to eq('Indonesia')
  end
end
