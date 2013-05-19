class MemberTeam < ActiveRecord::Base
  attr_accessible :function, :team_id, :member_id
  belongs_to :team
  belongs_to :member
end
