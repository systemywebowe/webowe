class CreateSponsorProjects < ActiveRecord::Migration
  def change
    create_table :sponsor_projects do |t|
      
      t.references :sponsor
      t.references :project
      t.timestamps
    end
  end
end
