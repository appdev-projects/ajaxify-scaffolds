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
require "test_helper"

class ActorTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
