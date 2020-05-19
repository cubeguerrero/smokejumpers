require 'test_helper'

class TeamTest < ActiveSupport::TestCase
  test "name is required" do
    team = teams(:redmond)
    team.name = ""

    refute team.valid?
  end

  test "area is required" do
    team = teams(:redmond)
    team.area = nil

    refute team.valid?
  end
end
