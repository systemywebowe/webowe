ActiveAdmin.register Award do
  index do    
    column :name
    column :info
    column :project
    default_actions
  end
  filter :name
  filter :info
  filter :project
end
