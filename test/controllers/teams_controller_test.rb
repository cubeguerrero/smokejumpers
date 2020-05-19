require 'test_helper'

class TeamsControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test "GET :index" do
    get teams_url
    assert_response :success
  end

  test "GET :show" do
    team = teams(:redmond)
    get team_url(team)
    assert_response :success
  end

  test "GET :show - 404" do
    get team_url(12345)
    assert_response :not_found
  end

  test "POST :create" do
    area = areas(:northwest)
    federation = federations(:usfs)

    assert_difference('Team.count') do
      post teams_url, params: { team: { name: "Team 1", area_id: area.id, federation_id: federation.id } }
    end

    assert_response :success
  end

  test "POST :create - invalid params" do
    assert_no_difference('Team.count') do
      post teams_url, params: { team: { name: "" } }
    end

    assert_response :unprocessable_entity
  end

  test "PUT :update" do
    team = teams(:redmond)

    put team_url(team), params: { team: { name: "New Name", area_id: team.area_id, federation_id: team.federation_id } }

    team.reload
    assert_response :success
    assert team.name == "New Name"
  end

  test "PUT :update - invalid params" do
    team = teams(:redmond)

    put team_url(team), params: { team: { name: "" } }

    assert_response :unprocessable_entity
  end

  test "DELETE :destroy" do
    team = teams(:redmond)

    delete team_url(team)

    assert_response :success
  end
end
