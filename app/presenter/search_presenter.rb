class SearchPresenter
  def projects
    service.water_projects.map do |id, water_project|
      Project.new(water_project)
    end
  end

  def locations
    geocode_service.coordinates.map do |coord|
      Location.new(coord)
    end
  end

  def service
    WorldBankService.new
  end

  def geocode_service
    GoogleGeocodeService.new
  end
end
