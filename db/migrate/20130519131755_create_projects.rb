class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :short_desc
      t.text :description
      t.references :category
      t.reference :team

      t.timestamps
    end
  end
end
