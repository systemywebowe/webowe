class Member < ActiveRecord::Base
  attr_accessible :info, :name, :surname, :photo, :user_id
  has_many :member_teams
  belongs_to :user
  has_attached_file :photo
end
