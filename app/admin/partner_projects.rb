ActiveAdmin.register PartnerProject do
  index do
    column :partner
    column :project
    default_actions
  end
  filter :partner
  filter :project
end
