class SponsorProject < ActiveRecord::Base
  attr_accessible :id_project, :id_sponsor, :id_sponsorProject
  belongs_to :project, :sponsor
end
