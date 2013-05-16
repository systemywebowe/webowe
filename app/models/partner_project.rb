class PartnerProject < ActiveRecord::Base
  attr_accessible :id_partner, :id_partnerProject, :id_project
  belongs_to :partner
  belongs_to :project
end
