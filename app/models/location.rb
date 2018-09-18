class Location
  attr_reader :name, :latitude, :longitude

  def initialize(data)
    @name = data[:formatted_address]
    @latitude = data[:geometry][:location][:lat]
    @longitude = data[:geometry][:location][:lng]
  end
end
