require "test_helper"

class FarmersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get farmers_index_url
    assert_response :success
  end

  test "should get show" do
    get farmers_show_url
    assert_response :success
  end

  test "should get profile" do
    get farmers_profile_url
    assert_response :success
  end
end
