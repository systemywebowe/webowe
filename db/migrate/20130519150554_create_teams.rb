class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :info
      t.references :project

      t.timestamps
    end
  end
end
