class Province < ApplicationRecord
  	has_many :districts
  	belongs_to :department
  	validates :name, presence: { message: "Ingrese el valor"}
	validates :ubigeo, uniqueness: { message: ": Esta repetido"}
end
