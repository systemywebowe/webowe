class PartnerProject < ActiveRecord::Base
  attr_accessible :project_id, :partner_id
  belongs_to :project
  belongs_to :partner
end
