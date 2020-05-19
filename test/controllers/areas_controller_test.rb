require 'test_helper'

class AreasControllerTest < ActionDispatch::IntegrationTest
  test "GET :index" do
    get areas_url
    assert_response :success
  end

  test "GET :show" do
    area = areas(:northwest)

    get area_url(area)

    assert_response :success
  end
end
