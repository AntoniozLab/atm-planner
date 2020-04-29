class LocationContact < ApplicationRecord
  belongs_to :location
  validates :first_name, presence: { message: ": Ingrese el valor"}
  validates :last_name, presence: { message: ": Ingrese el valor"}
  validates :phone, presence: { message: ": Ingrese el valor"}
  validates :position_name, presence: { message: ": Ingrese el valor"}
end
