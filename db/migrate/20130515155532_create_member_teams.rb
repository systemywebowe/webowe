class CreateMemberTeams < ActiveRecord::Migration
  def change
    create_table :member_teams do |t|
      t.integer :id_memberTeam
      t.integer :id_member
      t.integer :id_team
      t.string :function

      t.timestamps
    end
  end
end
