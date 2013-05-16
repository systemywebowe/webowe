class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :id_post, :primary_key
      t.integer :id_project
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
