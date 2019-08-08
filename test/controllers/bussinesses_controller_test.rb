require 'test_helper'

class BussinessesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bussiness = bussinesses(:one)
  end

  test "should get index" do
    get bussinesses_url
    assert_response :success
  end

  test "should get new" do
    get new_bussiness_url
    assert_response :success
  end

  test "should create bussiness" do
    assert_difference('Bussiness.count') do
      post bussinesses_url, params: { bussiness: { address: @bussiness.address, bussiness_type_id: @bussiness.bussiness_type_id, name: @bussiness.name, operating_hours: @bussiness.operating_hours, phone: @bussiness.phone, website: @bussiness.website } }
    end

    assert_redirected_to bussiness_url(Bussiness.last)
  end

  test "should show bussiness" do
    get bussiness_url(@bussiness)
    assert_response :success
  end

  test "should get edit" do
    get edit_bussiness_url(@bussiness)
    assert_response :success
  end

  test "should update bussiness" do
    patch bussiness_url(@bussiness), params: { bussiness: { address: @bussiness.address, bussiness_type_id: @bussiness.bussiness_type_id, name: @bussiness.name, operating_hours: @bussiness.operating_hours, phone: @bussiness.phone, website: @bussiness.website } }
    assert_redirected_to bussiness_url(@bussiness)
  end

  test "should destroy bussiness" do
    assert_difference('Bussiness.count', -1) do
      delete bussiness_url(@bussiness)
    end

    assert_redirected_to bussinesses_url
  end
end
