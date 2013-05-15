class Member < ActiveRecord::Base
  attr_accessible :description, :id_member, :id_user, :name, :surname, :photo
  has_attached_file :photo
  belongs_to :user
  has_many :member_teams
end
