class Partner < ActiveRecord::Base
  attr_accessible :id_partner, :info, :name
  has_many :partner_projects
end
