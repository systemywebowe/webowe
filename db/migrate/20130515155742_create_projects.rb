class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.integer :id_project, :primary_key
      t.string :name
      t.text :shortDesc
      t.text :description
      t.integer :id_category

      t.timestamps
    end
  end
end
