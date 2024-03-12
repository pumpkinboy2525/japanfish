require "test_helper"

class Public::FishControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get public_fish_index_url
    assert_response :success
  end
end
