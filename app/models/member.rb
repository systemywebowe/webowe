class Member < ActiveRecord::Base
  attr_accessible :info, :name, :surname, :photo
  has_many :member_teams
  belongs_to :user
  has_attached_file :photo
end
