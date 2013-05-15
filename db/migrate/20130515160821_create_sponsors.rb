class CreateSponsors < ActiveRecord::Migration
  def change
    create_table :sponsors do |t|
      t.integer :id_sponsor
      t.string :name
      t.text :info

      t.timestamps
    end
  end
end
