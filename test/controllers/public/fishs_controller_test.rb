require "test_helper"

class Public::FishsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get public_fishs_index_url
    assert_response :success
  end
end
