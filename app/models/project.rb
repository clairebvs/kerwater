class Project < ApplicationRecord
  has_many :comments

  def self.update_api_data
    wbs = WorldBankService.new
    api_data_objects = wbs.water_projects
    database_project_objects = Project.all
    Project.check_project_name(api_data_objects, database_project_objects)
    Project.check_country_name(api_data_objects, database_project_objects)
    Project.check_region(api_data_objects, database_project_objects)
  end

  def self.check_project_name(api_data, database_data)
    api_data.map do |key, value|
      if value[:project_name] != database_data
        Project.update(name: value[:project_name])
      end
    end
  end

  def self.check_country_name(api_data, database_data)
    api_data.map do |key, value|
      if value[:countryshortname] != database_data
        Project.update(country: value[:countryshortname])
      end
    end
  end

  def self.check_region(api_data, database_data)
    api_data.map do |key, value|
      if value[:regionname] != database_data
        Project.update(region: value[:regionname])
      end
    end
  end

  

end
