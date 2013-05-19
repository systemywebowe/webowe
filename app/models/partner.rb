class Partner < ActiveRecord::Base
  attr_accessible :info, :name, :project_id, :partner_project_id
  has_many :partner_projects
  has_many :projects, :through => :partner_projects
end
