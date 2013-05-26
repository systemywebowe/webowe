ActiveAdmin.register FileProject do
  index do
    column :info
    column :project
    column :pfile_file_name
    default_actions
  end
  filter :info
  
  filter :project
end
