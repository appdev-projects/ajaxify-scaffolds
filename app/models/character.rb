# == Schema Information
#
# Table name: characters
#
#  id         :bigint           not null, primary key
#  name       :string
#  actor_id   :bigint           not null
#  movie_id   :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Character < ApplicationRecord
  belongs_to :actor
  belongs_to :movie
end
