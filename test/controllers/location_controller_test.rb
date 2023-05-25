require "test_helper"

class LocationControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get locations_path
    assert_response :success
  end
end
