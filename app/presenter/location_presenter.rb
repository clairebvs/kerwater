class LocationPresenter
  def locations
    geocode_service.coordinates.map do |coord|
      Location.new(coord)
    end
  end

  def geocode_service
    GoogleGeocodeService.new
  end
end
