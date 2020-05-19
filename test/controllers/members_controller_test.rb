require 'test_helper'

class MembersControllerTest < ActionDispatch::IntegrationTest
  test "GET :index" do
    get members_url
    assert_response :success
  end

  test "GET :show" do
    member = members(:john)
    get member_url(member)
    assert_response :success
  end

  test "GET :show - not found" do
    get member_url(12345)
    assert_response :not_found
  end

  test "POST :create" do
    team = teams(:redmond)
    assert_difference("Member.count") do
      post members_url, params: { member: { name: "John Watson", age: 22, bio: "I am the partner of Sherlock Holmes", team_id: team.id } }
    end
    assert_response :success
  end

  test "POST :create - invalid params" do
    assert_no_difference("Member.count") do
      post members_url, params: { member: { name: "" } }
    end
    assert_response :unprocessable_entity
  end

  test "PUT :update" do
    member = members(:john)
    put member_url(member), params: { member: { name: "John Watson", age: 23, bio: "I am the parter of Sherlock Holmes", team_id: member.team_id } }

    member.reload
    assert_response :success
    assert member.name == "John Watson"
    assert member.bio.include?("Sherlock Holmes")
  end

  test "PUT :update - invalid params" do
    member = members(:john)
    put member_url(member), params: { member: { name: "", age: 19, bio: "", team_id: 12345 } }
    assert_response :unprocessable_entity
  end

  test "DELETE :destroy" do
    member = members(:john)
    delete member_url(member)
    assert_response :success
  end
end
