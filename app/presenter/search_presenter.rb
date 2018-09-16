class SearchPresenter
  def saving_projects
    service.water_projects.map do |id, water_project|
      ProjectFormatter.new(water_project).store_projects_to_database
    end
  end

  def service
    WorldBankService.new
  end
end
