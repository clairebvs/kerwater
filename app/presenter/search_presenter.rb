class SearchPresenter
  def projects
    service.water_projects.map do |id, water_project|
      # require "pry"; binding.pry
      Project.new(water_project)
    end
  end

  def service
    WorldBankService.new
  end
end
