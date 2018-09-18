class Project < ApplicationRecord
  # attr_reader :name, :country, :region, :abstract, :approval_date, :closing_date, :total_cost, :team_leader, :id, :latitude, :longitude, :locations
  has_many :comments

  # def update_project_data
  #   search_presenter = SearchPresenter.new
  #   projects = search_presenter.raw_projects
  #   if projects !=
  #     render status: 200, json: {
  #       message: "Successfully updated To-do Item.",
  #       todo_list: @list,
  #       todo_item: item
  #     }.to_json
  #   else
  #     render status: 422, json: {
  #       message: "To-do Item update failed.",
  #       errors: item.errors
  #     }.to_json
  #   end
  # end
end
