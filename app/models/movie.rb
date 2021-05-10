# == Schema Information
#
# Table name: movies
#
#  id          :bigint           not null, primary key
#  title       :string
#  description :text
#  duration    :integer
#  image       :string
#  year        :integer
#  director_id :bigint
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Movie < ApplicationRecord
  belongs_to :director
  has_many :characters, dependent: :destroy
  has_many :actors, through: :characters
end
