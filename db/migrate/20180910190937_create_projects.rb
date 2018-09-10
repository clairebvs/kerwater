class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :country
      t.string :region
      t.string :abstract
      t.string :status
    end
  end
end
