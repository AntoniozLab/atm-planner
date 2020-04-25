class AtmModel < ApplicationRecord
  belongs_to :ATM
  has_one :atm_brands
  validates :name, presence :true

  def to_string
    name    
  end
end
