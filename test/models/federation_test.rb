require 'test_helper'

class FederationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "name is required" do
    federation = federations(:usfs)
    federation.name = ""
    refute federation.valid?, "name presence is required"
  end

  test "description is required" do
    federation = federations(:usfs)
    federation.description = ""
    refute federation.valid?, "description presence is required"
  end

  test "description length minimum is 10" do
    federation = federations(:usfs)
    federation.description = "a" * 9
    refute federation.valid?, "description length should be at least 10"
  end

  test "description length maximum is 300" do
    federation = federations(:usfs)
    federation.description = "a" * 301
    refute federation.valid?, "description length should be at most 300"
  end
end
