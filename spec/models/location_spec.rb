require 'rails_helper'

describe 'Location' do
  it 'find the location for all the countries associated with a project' do
    data = {  "formatted_address": "Cameroon",
              "geometry": {
                  "location": {
                      "lat": 7.369721999999999,
                      "lng": 12.354722
                  },
                }
            }

    location = Location.new(data)
    expect(location.formatted_address).to eq("Cameroon")
    expect(location.latitude).to eq(7.369721999999999)
    expect(location.longitude).to eq(12.354722)
  end
end
