class Project < ApplicationRecord
  # attr_reader :name, :country, :region, :abstract, :approval_date, :closing_date, :total_cost, :team_leader, :id, :latitude, :longitude, :locations
  has_many :comments
  
end
