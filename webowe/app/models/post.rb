class Post < ActiveRecord::Base
  attr_accessible :content, :title, :project_id, :photo
  belongs_to :project
  has_attached_file :photo
end
