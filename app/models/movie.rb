class Movie < ApplicationRecord
  belongs_to :director
  has_many :characters
end
