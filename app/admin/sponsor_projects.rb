ActiveAdmin.register SponsorProject do
  index do
    column :sponsor
    column :project
    default_actions
  end
  filter :sponsor
  filter :project
end
