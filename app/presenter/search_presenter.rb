class SearchPresenter

  def initialize
    @locations = get_locations
  end

  def saving_projects
    service.water_projects.map do |id, water_project|
      Project.create(water_project_attrs(water_project))
    end
  end

  def service
    WorldBankService.new
  end

  private

  def water_project_attrs(data)
    {:id => data[:id],
    :name => data[:project_name],
    :country => data[:countryshortname],
    :region => data[:regionname],
    :abstract => data[:project_abstract][:cdata],
    :approval_date => data[:boardapprovaldate],
    :closing_date => data[:closingdate],
    :total_cost => data[:lendprojectcost],
    :team_leader => format_team_leader(data),
    :latitude => get_lat(data[:countryshortname]),
    :longitude => get_long(data[:countryshortname])
   }
  end

  def format_team_leader(data)
    if data[:teamleadname].is_a?(Array)
      data[:teamleadname].join(", ")
    else
      data[:teamleadname]
    end
  end

  def get_locations
    geocode_service = GoogleGeocodeService.new
    locations = geocode_service.coordinates.map do |coord|
      Location.new(coord)
    end
    return locations
  end

  def get_lat(country_data)
    location_object = @locations.find do |location|
      location.name == country_data
    end
    if location_object == nil
      return 0
    else
      return location_object.latitude
    end
  end

  def get_long(country_data)
    location_object = @locations.find do |location|
      location.name == country_data
    end
    if location_object == nil
      return 0
    else
      return location_object.longitude
    end
  end
end
