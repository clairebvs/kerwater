class Project < ApplicationRecord
  has_many :comments

  def self.update_api_data
    wbs = WorldBankService.new
    api_data_objects = wbs.water_projects
    database_project_objects = Project.all
    Project.check_project_name(api_data_objects, database_project_objects)
    Project.check_country_name(api_data_objects, database_project_objects)
  end

  def self.check_project_name(api_data_objects, database_project_objects)
    api_data_objects.map do |key, value|
      if value[:project_name] != database_project_objects
        Project.update(name: value[:project_name])
      end
    end
  end

  def self.check_country_name(api_data_objects, database_project_objects)
    api_data_objects.map do |key, value|
      if value[:countryshortname] != database_project_objects
        Project.update(country: value[:countryshortname])
      end
    end
  end

end
