require 'test_helper'

class BussinessTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bussiness_type = bussiness_types(:one)
  end

  test "should get index" do
    get bussiness_types_url
    assert_response :success
  end

  test "should get new" do
    get new_bussiness_type_url
    assert_response :success
  end

  test "should create bussiness_type" do
    assert_difference('BussinessType.count') do
      post bussiness_types_url, params: { bussiness_type: { section: @bussiness_type.section } }
    end

    assert_redirected_to bussiness_type_url(BussinessType.last)
  end

  test "should show bussiness_type" do
    get bussiness_type_url(@bussiness_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_bussiness_type_url(@bussiness_type)
    assert_response :success
  end

  test "should update bussiness_type" do
    patch bussiness_type_url(@bussiness_type), params: { bussiness_type: { section: @bussiness_type.section } }
    assert_redirected_to bussiness_type_url(@bussiness_type)
  end

  test "should destroy bussiness_type" do
    assert_difference('BussinessType.count', -1) do
      delete bussiness_type_url(@bussiness_type)
    end

    assert_redirected_to bussiness_types_url
  end
end
