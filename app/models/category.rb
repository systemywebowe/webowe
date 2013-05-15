class Category < ActiveRecord::Base
  attr_accessible :id_cetegory, :name
  has_many :projects
end
