require 'test_helper'

class JointsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get joints_show_url
    assert_response :success
  end

  test "should get new" do
    get joints_new_url
    assert_response :success
  end

  test "should get edit" do
    get joints_edit_url
    assert_response :success
  end

end
