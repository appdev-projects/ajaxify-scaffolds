# == Schema Information
#
# Table name: movies
#
#  id          :bigint           not null, primary key
#  description :text
#  duration    :integer
#  image       :string
#  title       :string
#  year        :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  director_id :bigint
#
# Indexes
#
#  index_movies_on_director_id  (director_id)
#
# Foreign Keys
#
#  fk_rails_...  (director_id => directors.id)
#
class Movie < ApplicationRecord
  validates(:director_id, { :presence => true })
  validates(:title, { :uniqueness => { :scope => [:year] } })
  
  belongs_to :director

  belongs_to(:filmography, {
    :class_name => "Director",
    :foreign_key => "director_id"
  })

  has_many(:characters, {
    :class_name => "Character",
    :foreign_key => "movie_id",
    dependent: :destroy
  })

  

end
