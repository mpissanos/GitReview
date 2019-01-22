class Guitar < ApplicationRecord
  has_many :reviews
  has_many :users, through: :reviews

  #add validations

  
end
