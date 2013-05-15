class ProjectFile < ActiveRecord::Base
  attr_accessible :description, :id_file, :id_project, :source
  belongs_to :project
end
