class Project < ActiveRecord::Base
  attr_accessible :description, :id_category, :id_project, :name, :shortDesc
  has_many :sponsor_projects, :parnter_projects, :awards, :project_files, :posts
  belongs_to :category, :team
end
