class Team < ActiveRecord::Base
  attr_accessible :info, :project_id
  has_many :projects
  has_many :member_teams
  
end
