class CreatePartnerProjects < ActiveRecord::Migration
  def change
    create_table :partner_projects do |t|
      t.references :partner
      t.references :project
      t.timestamps
    end
  end
end
