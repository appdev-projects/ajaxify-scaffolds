class Movie < ApplicationRecord
  belongs_to :director
  has_many :characters, dependent: :destroy
  has_many :actors, through: :character
end
