class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.integer :id_team
      t.integer :id_project

      t.timestamps
    end
  end
end
