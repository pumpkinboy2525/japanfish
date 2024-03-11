require "test_helper"

class Admin::FishsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_fishs_index_url
    assert_response :success
  end

  test "should get show" do
    get admin_fishs_show_url
    assert_response :success
  end

  test "should get edit" do
    get admin_fishs_edit_url
    assert_response :success
  end
end
