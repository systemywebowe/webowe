ActiveAdmin.register MemberTeam do
  index do
    column :member
    column :team
    default_actions
  end
  filter :member
  filter :team
end
