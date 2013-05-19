class Award < ActiveRecord::Base
  attr_accessible :info, :name, :project_id
  belongs_to :project
end
