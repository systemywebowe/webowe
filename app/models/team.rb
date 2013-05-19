class Team < ActiveRecord::Base
  attr_accessible :info
  has_many :projects
  has_many :member_teams
  
end
