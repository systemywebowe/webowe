class CreatePartners < ActiveRecord::Migration
  def change
    create_table :partners do |t|
      t.integer :id_partner, :primary_key
      t.string :name
      t.text :info

      t.timestamps
    end
  end
end
