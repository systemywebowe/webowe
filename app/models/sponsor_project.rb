class SponsorProject < ActiveRecord::Base
  attr_accessible :project_id, :sponsor_id
  belongs_to :project
  belongs_to :sponsor
end
