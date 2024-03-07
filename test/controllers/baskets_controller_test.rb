require "test_helper"

class BasketsControllerTest < ActionDispatch::IntegrationTest
  test "should get add" do
    get baskets_add_url
    assert_response :success
  end

  test "should get basket" do
    get baskets_basket_url
    assert_response :success
  end
end
