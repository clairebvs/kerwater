class ProjectFormatter
  attr_reader :name, :country, :region, :abstract, :approval_date, :closing_date, :total_cost, :team_leader, :id, :latitude, :longitude

  def initialize(data)
    @id = data[:id]
    @name = data[:project_name]
    @country = data[:countryshortname]
    @region = data[:regionname]
    @abstract = data[:project_abstract][:cdata]
    @approval_date = data[:boardapprovaldate]
    @closing_date = data[:closingdate]
    @total_cost = data[:lendprojectcost]
    @team_leader = format_team_leader(data)
    @latitude = 0
    @longitude = 0
  end

  def format_team_leader(data)
    if data[:teamleadname].is_a?(Array)
      data[:teamleadname].join(", ")
    else
      data[:teamleadname]
    end
  end

  def store_projects_to_database
    Project.create(name: @name,
                   country: @country,
                   region: @region,
                   abstract: @abstract,
                   approval_date: @approval_date,
                   closing_date: @closing_date,
                   total_cost: @total_cost,
                   team_leader: @team_leader,
                   latitude: @latitude,
                   longitude: @longitude)
  end
end
