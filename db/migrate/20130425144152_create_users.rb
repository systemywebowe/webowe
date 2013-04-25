class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :id_user, :primary_key
      t.string :login
      t.string :password
      t.string :email

      t.timestamps
    end
  end
end