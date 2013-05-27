class FileProject < ActiveRecord::Base
  attr_accessible :info, :source, :project_id
  belongs_to :project
end
