class CrProject < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :short_desc
      t.text :description
      t.references :category
      t.references :team

      t.timestamps
    end
  end
end
