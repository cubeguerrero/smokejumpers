require 'test_helper'

class FederationsControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  test "GET :index" do
    get federations_url
    assert_response :success
  end

  test "GET :show" do
    federation = federations(:usfs)
    get federation_url(federation)
    assert_response :success
  end

  test "GET :show - not found" do
    get federation_url(1234)
    assert_response :not_found
  end

  test "POST :create" do
    post federations_url, params: { federation: { name: "Some Federation", description: "This is a description." } }
    assert_response :success
  end

  test "POST :create with invalid params" do
    post federations_url, params: { federation: { name: "" } }
    assert_response :unprocessable_entity
  end

  test "PUT :update" do
    federation = federations(:usfs)
    put federation_url(federation), params: { federation: { name: "Hello Federation", description: "Yahoo World Bakit ganun." } }
    assert_response :success
  end

  test "PUT :update with invalid params" do
    federation = federations(:usfs)
    put federation_url(federation), params: { federation: { name: "", description: "" } }
    assert_response :unprocessable_entity
  end

  test "DELETE :destroy" do
    federation = federations(:usfs)
    delete federation_url(federation)
    assert_response :success
  end
end
