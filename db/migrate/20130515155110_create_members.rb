class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.integer :id_member, :primary_key
      t.string :name
      t.string :surname
      t.text :description
      t.integer :id_user

      t.timestamps
    end
  end
  
end
