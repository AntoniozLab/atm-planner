class District < ApplicationRecord
  belongs_to :province

  	validates :name, presence: { message: "Ingrese el valor"}
	validates :ubigeo, uniqueness: { message: ": Esta repetido"}
end
