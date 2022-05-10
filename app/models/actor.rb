class Actor < ApplicationRecord
  has_many :characters, dependent: :destroy
end
