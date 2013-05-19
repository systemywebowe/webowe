class Project < ActiveRecord::Base
  attr_accessible :description, :name, :short_desc, :category_id
  belongs_to :category
  has_many :awards
  has_many :sponsor_projects
  has_many :sponsors, :through => :sponsor_projects
  has_many :partner_projects
  has_many :partners, :through => :partner_projects
  has_many :file_projects
  has_many :posts
  belongs_to :team
  
  
  
end
