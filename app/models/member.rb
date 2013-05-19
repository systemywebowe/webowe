class Member < ActiveRecord::Base
  attr_accessible :info, :name, :surname
  has_many :member_teams
  belongs_to :user
end
