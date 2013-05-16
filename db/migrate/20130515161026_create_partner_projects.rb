class CreatePartnerProjects < ActiveRecord::Migration
  def change
    create_table :partner_projects do |t|
      t.integer :id_partnerProject, :primary_key
      t.integer :id_partner
      t.integer :id_project

      t.timestamps
    end
  end
end
