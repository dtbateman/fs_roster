require 'test_helper'

class VolunteerDetailsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get volunteer_details_new_url
    assert_response :success
  end

  test "should get create" do
    get volunteer_details_create_url
    assert_response :success
  end

  test "should get edit" do
    get volunteer_details_edit_url
    assert_response :success
  end

  test "should get update" do
    get volunteer_details_update_url
    assert_response :success
  end

  test "should get show" do
    get volunteer_details_show_url
    assert_response :success
  end

  test "should get index" do
    get volunteer_details_index_url
    assert_response :success
  end

end
