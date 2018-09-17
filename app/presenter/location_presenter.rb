class LocationPresenter
  def locations
    geocode_service.coordinates.map do |coord|
      @projects = Project.all

      require "pry"; binding.pry
      Location.new(coord)
      if coord[:formatted_address] == @projects.where(country: 'coord[:formatted_address]')
        (@projects.update(latitude: 'coord[:geometry][:location][:lat]')) && (@projects.update(longitude: 'coord[:geometry][:location][:lng]'))
      end
    end
  end

  def projects_array
  end

  def geocode_service
    GoogleGeocodeService.new
  end
end
