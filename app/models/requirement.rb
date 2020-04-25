class Requirement < ApplicationRecord
  belongs_to :user
  belongs_to :requirement_state
  belongs_to :location
end
