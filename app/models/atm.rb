class Atm < ApplicationRecord
  belongs_to :atm_model
  belongs_to :atm_type
  belongs_to :atm_state

  validates :serial_number, uniqueness: { message: ": Está repetido"}


end
