# == Schema Information
#
# Table name: articales
#
#  id          :integer          not null, primary key
#  description :text
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer
#
require "test_helper"

class ArticaleTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
