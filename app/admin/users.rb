ActiveAdmin.register User do
  index do
    column :login
    column :email
    default_actions
  end
  filter :login
  filter :email
end
