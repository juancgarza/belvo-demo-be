require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get get_token" do
    get home_get_token_url
    assert_response :success
  end

end
