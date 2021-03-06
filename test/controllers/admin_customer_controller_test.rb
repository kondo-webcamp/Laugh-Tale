require "test_helper"

class AdminCustomerControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_customer_index_url
    assert_response :success
  end

  test "should get show" do
    get admin_customer_show_url
    assert_response :success
  end

  test "should get edit" do
    get admin_customer_edit_url
    assert_response :success
  end
end
