class AtmBrand < ApplicationRecord
  belongs_to :atm_models
  validates :name, presence :true

  def to_string
    name    
  end
end
