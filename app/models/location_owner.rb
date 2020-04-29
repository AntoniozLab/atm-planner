class LocationOwner < ApplicationRecord
  validates :name, presence: { message: ": Ingrese el valor"}
  validates :business_name, presence: { message: ": Ingrese el valor"}
  validates :document_number, presence: { message: ": Ingrese el valor"}
end
