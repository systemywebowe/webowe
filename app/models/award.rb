class Award < ActiveRecord::Base
  attr_accessible :content, :from, :id_award, :id_project, :name
  belongs_to :project
  
end
