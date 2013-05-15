class Team < ActiveRecord::Base
  attr_accessible :id_project, :id_team
  has_many :projects, :member_teams
end
