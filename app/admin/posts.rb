ActiveAdmin.register Post do
  index do
    column :title
    column :content
    column :project
    default_actions
  end
  filter :project
  filter :title
end
