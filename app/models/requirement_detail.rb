class RequirementDetail < ApplicationRecord
  belongs_to :requirement
  belongs_to :requirement_type
  belongs_to :requirement_detail_state
  belongs_to :requirement_detail_reason
end
