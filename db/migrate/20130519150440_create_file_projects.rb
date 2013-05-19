class CreateFileProjects < ActiveRecord::Migration
  def change
    create_table :file_projects do |t|
      t.string :source
      t.text :info
      t.references :project

      t.timestamps
    end
  end
end
