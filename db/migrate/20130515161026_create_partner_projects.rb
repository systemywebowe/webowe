class CreatePartnerProjects < ActiveRecord::Migration
  def change
    create_table :partner_projects do |t|
      t.integer :id_partnerProject
      t.integer :id_partner
      t.integer :id_project

      t.timestamps
    end
  end
end
