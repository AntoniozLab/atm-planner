class Atm < ApplicationRecord
  belongs_to :atm_model
  belongs_to :atm_type
  belongs_to :atm_state

  validates :serial_number, uniqueness: { message: ": Está repetido"}
  validates :serial_number, presence: { message: "Ingrese el valor"}

end
