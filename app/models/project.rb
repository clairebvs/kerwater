class Project

  attr_reader :name, :country, :region, :abstract, :approval_date, :closing_date, :total_cost, :team_leader, :id

  def initialize(data)
    @id = data[:id]
    @name = data[:project_name]
    @country = data[:countryshortname]
    @region = data[:regionname]
    @abstract = data[:project_abstract][:cdata]
    @approval_date = data[:boardapprovaldate]
    @closing_date = data[:closingdate]
    @total_cost = data[:lendprojectcost]
    @team_leader = data[:teamleadname]
    @lat = nil
    @long = nil
  end

  def set_lat(lat)
    @lat = lat
  end

  def set_long(long)
    @long = long
  end 



  # def add_locations
  #   geo = SearchPresenter.new
  #   @geoloc = geo.locations
  #   @projects = geo.projects.map do |project|
  #     @geoloc.map do |location|
  #       # require "pry"; binding.pry
  #       if location.name == project.country
  #         (project.latitude = location.latitude) && (project.longitude = location.longitude)
  #       end
  #     end
  #   end
  # end
end
