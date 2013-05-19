class CreateMemberTeams < ActiveRecord::Migration
  def change
    create_table :member_teams do |t|
      t.string :function
      t.references :member 
      t.references :team

      t.timestamps
    end
  end
end
