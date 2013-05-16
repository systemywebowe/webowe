class CreateAwards < ActiveRecord::Migration
  def change
    create_table :awards do |t|
      t.integer :id_award, :primary_key
      t.integer :id_project
      t.string :name
      t.text :content
      t.string :from

      t.timestamps
    end
  end
end
