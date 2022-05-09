class Actor < ApplicationRecord
  has_many :characters
  has_many :movies, through: :character
end
