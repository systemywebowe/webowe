class Post < ActiveRecord::Base
  attr_accessible :content, :id_post, :id_project, :title, :photo
  has_attached_file :photo
  belongs_to :project
end
