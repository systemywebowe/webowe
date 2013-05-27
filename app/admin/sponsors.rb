ActiveAdmin.register Sponsor do
  index do
    column :name
    column :info
    default_actions
  end
  filter :name
  filter :info
end
