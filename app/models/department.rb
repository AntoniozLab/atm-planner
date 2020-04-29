class Department < ApplicationRecord
	has_many :provinces
	#lugar para validar
	validates :name, presence: { message: "Ingrese el valor"}
	validates :ubigeo, uniqueness: { message: ": Esta repetido"}
end
