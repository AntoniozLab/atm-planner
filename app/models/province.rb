class Province < ApplicationRecord
  has_many :districts
  belongs_to :department
end
