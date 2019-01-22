class Review < ApplicationRecord
  belongs_to :user
  belongs_to :guitar

  accepts_nested_attributes_for :guitar
end