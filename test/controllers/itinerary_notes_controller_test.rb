require "test_helper"

class ItineraryNotesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get itinerary_notes_new_url
    assert_response :success
  end

  test "should get create" do
    get itinerary_notes_create_url
    assert_response :success
  end

  test "should get edit" do
    get itinerary_notes_edit_url
    assert_response :success
  end

  test "should get update" do
    get itinerary_notes_update_url
    assert_response :success
  end

  test "should get destroy" do
    get itinerary_notes_destroy_url
    assert_response :success
  end
end
