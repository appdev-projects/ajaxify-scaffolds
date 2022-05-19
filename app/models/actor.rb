class Actor < ApplicationRecord
  has_many :roles, through: :characters
end
