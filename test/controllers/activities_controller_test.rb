require "test_helper"

class ActivitiesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get activities_show_url
    assert_response :success
  end

  test "should get destroy" do
    get activities_destroy_url
    assert_response :success
  end
end
