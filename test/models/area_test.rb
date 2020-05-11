require 'test_helper'

class AreaTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "name is required" do
    area = areas(:northwest)
    area.name = ""
    refute area.valid?, "name should be required"
  end
end
