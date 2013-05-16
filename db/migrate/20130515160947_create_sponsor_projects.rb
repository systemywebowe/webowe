class CreateSponsorProjects < ActiveRecord::Migration
  def change
    create_table :sponsor_projects do |t|
      t.integer :id_sponsorProject, :primary_key
      t.integer :id_sponsor
      t.integer :id_project

      t.timestamps
    end
  end
end
