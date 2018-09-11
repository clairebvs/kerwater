require 'rails_helper'

describe "Geolocate API" do
  it "sends a list of items" do
    create_list(:project, 3)

    get '/api/v1/geolocate'

    expect(response).to be_successful
  end
end
