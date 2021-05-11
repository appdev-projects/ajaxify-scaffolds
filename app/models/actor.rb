# == Schema Information
#
# Table name: actors
#
#  id         :bigint           not null, primary key
#  name       :string
#  bio        :text
#  dob        :date
#  image      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Actor < ApplicationRecord
end
