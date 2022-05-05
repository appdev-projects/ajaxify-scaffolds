class Director < ApplicationRecord
  has_many :movies, dependent: :destroy
end
