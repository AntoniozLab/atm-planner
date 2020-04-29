class AtmBrand < ApplicationRecord
    validates :name, presence: { message: "Ingrese el valor"}
    validates :name, uniqueness: { message: "Marca ya existe"}
end
