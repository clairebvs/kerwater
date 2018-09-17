class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :author_name
      t.text :body
      t.references :project, foreign_key: true
    end
  end
end
