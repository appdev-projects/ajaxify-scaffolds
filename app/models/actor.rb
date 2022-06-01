class Actor < ApplicationRecord

  has_many :characters, dependent: :destroy
  has_many :movies, through: :characters

end
