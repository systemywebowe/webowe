ActiveAdmin.register Member do
  index do
    column :name
    column :surname
    column :info
    default_actions
  end
  filter :surname
end
