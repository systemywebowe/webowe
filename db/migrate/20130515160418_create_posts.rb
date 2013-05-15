class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :id_post
      t.integer :id_project
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
