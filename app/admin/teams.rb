ActiveAdmin.register Team do
  index do
    column :info
    default_actions
  end
  filter :info
end
