class Atm < ApplicationRecord
    has_one :atm_types
    has_one :atm_states
    has_one :atm_models

    validates :serial_number, presence :true

    def to_string 
        serial_number
    end
    
end
