class Location < ApplicationRecord
  belongs_to :location_type
  belongs_to :location_owner
  belongs_to :district
end
