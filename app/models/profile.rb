class Profile < ApplicationRecord
    validates :name, presence: { message: "Indique el nuevo perfil"}
    validates :name, uniqueness: { message: "Perfil de Usuario ya existe"}
end
