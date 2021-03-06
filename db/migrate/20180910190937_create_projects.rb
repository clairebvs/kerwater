class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :country
      t.string :region
      t.string :abstract
      t.string :approval_date
      t.string :closing_date
      t.integer :total_cost
      t.string :team_leader
      t.integer :latitude
      t.integer :longitude
    end
  end
end
