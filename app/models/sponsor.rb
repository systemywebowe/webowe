class Sponsor < ActiveRecord::Base
  attr_accessible :id_sponsor, :info, :name
  has_many :sponsor_projects
end
