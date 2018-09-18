class Project < ApplicationRecord
  # attr_reader :name, :country, :region, :abstract, :approval_date, :closing_date, :total_cost, :team_leader, :id, :latitude, :longitude, :locations
  has_many :comments

  def update_project_data
    search_presenter = SearchPresenter.new
    projects = search_presenter.raw_projects
    # if projects !=
    #
    # # else
    #
    # end
  end
end
