class User < ApplicationRecord
  validates :name, 
    format: { 
      with: /\A[a-zA-Z]+\z/
    }
  validates :email, 
    uniqueness: true,
    presence: true
  validates :contact, 
    length: { is: 10 }
  validates :age, :contact, 
    numericality: { 
      only_integer: true, 
    }
end
