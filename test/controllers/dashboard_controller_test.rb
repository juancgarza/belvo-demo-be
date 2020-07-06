require 'test_helper'

class DashboardControllerTest < ActionDispatch::IntegrationTest
  test "should get accounts" do
    get dashboard_accounts_url
    assert_response :success
  end

  test "should get transactions" do
    get dashboard_transactions_url
    assert_response :success
  end

  test "should get balances" do
    get dashboard_balances_url
    assert_response :success
  end

end
