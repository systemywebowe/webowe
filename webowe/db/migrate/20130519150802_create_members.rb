class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :name
      t.string :surname
      t.string :info
      t.references :user

      t.timestamps
    end
  end
end
