class AtmState < ApplicationRecord
    validates :name, presence: { message: "Ingrese el valor"}
    validates :name, uniqueness: { message: "Estado ya existe"}
end
