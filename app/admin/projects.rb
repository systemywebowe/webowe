ActiveAdmin.register Project do
  index do
    column :name
    column :short_desc
    column :description
    column :team
    column :category
    default_actions
  end
  filter :name
  filter :short_desc
  filter :team
  filter :category
  
end
