# == Schema Information
#
# Table name: directors
#
#  id         :bigint           not null, primary key
#  bio        :text
#  dob        :date
#  image      :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require "test_helper"

class DirectorTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
