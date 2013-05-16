class Project < ActiveRecord::Base
  attr_accessible :description, :id_category, :id_project, :name, :shortDesc
  has_many :sponsor_projects
  has_many :parnter_projects
  has_many :awards
  has_many :project_files
  has_many :posts
  belongs_to :category
  belongs_to :team
end
