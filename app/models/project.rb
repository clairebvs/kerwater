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
  end
end
