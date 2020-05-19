require 'test_helper'

class MemberTest < ActiveSupport::TestCase
  test "name is required" do
    member = members(:john)
    member.name = ""

    refute member.valid?
  end

  test "age is required" do
    member = members(:john)
    member.age = nil

    refute member.valid?
  end

  test "age cannot be less than 21" do
    member = members(:john)
    member.age = 20

    refute member.valid?
  end

  test "bio is required" do
    member = members(:john)
    member.bio = ""

    refute member.valid?
  end

  test "bio must be at least 10 characters" do
    member = members(:john)
    member.bio = "a" * 9

    refute member.valid?
  end

  test "bio must be at most 500 characters" do
    member = members(:john)
    member.bio = "a" * 501

    refute member.valid?
  end

  test "team must be valid" do
    member = members(:john)
    member.team_id = 123489173589175918571

    refute member.valid?
  end
end
