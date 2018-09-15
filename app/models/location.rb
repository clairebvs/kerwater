class Location
  attr_reader :country, :latitude, :longitude

  def initialize(data)
    @country = data[:formatted_address]
    @latitude = data[:geometry][:location][:lat]
    @longitude = data[:geometry][:location][:lng]
  end
end
