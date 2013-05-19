class Post < ActiveRecord::Base
  attr_accessible :content, :title, :project_id
  belongs_to :project
end
