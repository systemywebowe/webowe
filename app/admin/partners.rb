ActiveAdmin.register Partner do
  index do
    column :name
    column :info
    default_actions
  end
  filter :name
  filter :info
end
