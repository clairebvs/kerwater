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

  def self.check_abstract(api_data, database_data)
    api_data.map do |key, value|
      if value[:project_abstract][:cdata] != database_data
        Project.update(abstract: value[:project_abstract][:cdata])
      end
    end
  end

  def self.check_approval_date(api_data, database_data)
    api_data.map do |key, value|
      if value[:boardapprovaldate] != database_data
        Project.update(approval_date: value[:boardapprovaldate])
      end
    end
  end

  def self.check_closing_date(api_data, database_data)
    api_data.map do |key, value|
      if value[:closingdate] != database_data
        Project.update(closing_date: value[:closingdate])
      end
    end
  end

  def self.check_total_cost(api_data, database_data)
    api_data.map do |key, value|
      if value[:lendprojectcost] != database_data
        Project.update(total_cost: value[:lendprojectcost])
      end
    end
  end

end
