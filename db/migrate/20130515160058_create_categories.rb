class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.integer :id_cetegory
      t.string :name

      t.timestamps
    end
  end
end
