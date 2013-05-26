class FileProject < ActiveRecord::Base
  attr_accessible :info, :source, :project_id, :pfile
  belongs_to :project
  has_attached_file :pfile
end
