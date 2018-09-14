require 'rails_helper'

describe "Geolocate API" do
  it "returns a JSON response with location of the country" do

    peru = { formatted_address: 'Peru',
             lat: -9.189967,
             lng: -75.01
           }
    cameroon = { formatted_address: 'Cameroon',
                lat: 7.37,
                lng: 12.35
                }

    get "/api/v1/geolocate"

    expect(response.status).to eq 200
    geolocation = JSON.parse(response.body, symbolize_names: true)

    expect(geolocation.count).to eq(8)
    expect(geolocation.first[:formatted_address]).to eq('Peru')
    expect(geolocation.first[:geometry][:location][:lat]).to eq(peru[:lat])
    expect(geolocation[1][:formatted_address]).to eq('Cameroon')
  end
end
