class Requirement < ApplicationRecord
  belongs_to :user
  belongs_to :requirement_state
  belongs_to :location
  has_many :requirement_details, dependent: :destroy
  accepts_nested_attributes_for :requirement_details, allow_destroy: true
  # accepts_nested_attributes_for :requirement_details, allow_destroy: true, reject_if: proc { |att| att['start_date'].blank? }
end
