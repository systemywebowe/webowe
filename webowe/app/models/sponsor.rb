class Sponsor < ActiveRecord::Base
  attr_accessible :info, :name, :project_id, :sponsor_project_id
  has_many :sponsor_projects
  has_many :projects, :through => :sponsor_projects
end
