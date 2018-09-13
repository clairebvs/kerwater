require 'rails_helper'

describe "Geolocate API" do
  it "returns a JSON response with location of the country" do
    locations = WorldBankService.new
    presenter = SearchPresenter.new
    data = { id: 123,
             country: 'Peru',
             region: 'Latin America'
             # project: {
             #   abstract: 'Modernization'}
            }
    project = Project.new(data)
    country = project.country

    peru = { lat: -9.18,
            lng: -75.01
          }

    get "/api/v1/geolocate?address=#{country}"

    expect(response.status).to eq 200
    geolocation = JSON.parse(response.body, symbolize_names: true)
    expect(geolocation[:location][:lat]).to eq(peru[:lat])
    expect(geolocation[:location][:lng]).to eq(peru[:lng])
  end
end
