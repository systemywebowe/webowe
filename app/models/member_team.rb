class MemberTeam < ActiveRecord::Base
  attr_accessible :function, :id_member, :id_memberTeam, :id_team
  belongs_to :member, :team
end
