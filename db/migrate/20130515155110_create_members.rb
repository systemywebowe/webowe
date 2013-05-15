class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.integer :id_member
      t.string :name
      t.string :surname
      t.text :description
      t.integer :id_user

      t.timestamps
    end
  end
  
end
