class SearchPresenter
  def projects
    require "pry"; binding.pry
    locate = LocationPresenter.new
    service.water_projects.map do |id, water_project|
      Project.new(water_project)
      locate.locations.each do |location|
        if location.name == project.country
          project.set_lat(location.latitude)
          project.set_long(location.longitude)
        end
      end
    end
  end

  # def locations
  #   geocode_service.coordinates.map do |coord|
  #     Location.new(coord)
  #   end
  # end

  def service
    WorldBankService.new
  end

  # def geocode_service
  #   GoogleGeocodeService.new
  # end
end
