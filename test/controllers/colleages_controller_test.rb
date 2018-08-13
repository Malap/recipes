require 'test_helper'

class ColleagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @colleage = colleages(:one)
  end

  test "should get index" do
    get colleages_url
    assert_response :success
  end

  test "should get new" do
    get new_colleage_url
    assert_response :success
  end

  test "should create colleage" do
    assert_difference('Colleage.count') do
      post colleages_url, params: { colleage: { address: @colleage.address, city: @colleage.city, name: @colleage.name, phonenumber: @colleage.phonenumber } }
    end

    assert_redirected_to colleage_url(Colleage.last)
  end

  test "should show colleage" do
    get colleage_url(@colleage)
    assert_response :success
  end

  test "should get edit" do
    get edit_colleage_url(@colleage)
    assert_response :success
  end

  test "should update colleage" do
    patch colleage_url(@colleage), params: { colleage: { address: @colleage.address, city: @colleage.city, name: @colleage.name, phonenumber: @colleage.phonenumber } }
    assert_redirected_to colleage_url(@colleage)
  end

  test "should destroy colleage" do
    assert_difference('Colleage.count', -1) do
      delete colleage_url(@colleage)
    end

    assert_redirected_to colleages_url
  end
end
