class AtmState < ApplicationRecord
  belongs_to :ATM
  validates :name, presence :true

  def to_string
    name    
  end
end
