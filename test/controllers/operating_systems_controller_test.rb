require 'test_helper'

class OperatingSystemsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get operating_systems_index_url
    assert_response :success
  end

  test "should get show" do
    get operating_systems_show_url
    assert_response :success
  end

  test "should get edit" do
    get operating_systems_edit_url
    assert_response :success
  end

  test "should get new" do
    get operating_systems_new_url
    assert_response :success
  end

end
