class CreateProjectFiles < ActiveRecord::Migration
  def change
    create_table :project_files do |t|
      t.integer :id_file, :primary_key
      t.integer :id_project
      t.string :source
      t.string :description

      t.timestamps
    end
  end
end
