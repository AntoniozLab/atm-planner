require 'test_helper'

class LocationOwnersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @location_owner = location_owners(:one)
  end

  test "should get index" do
    get location_owners_url
    assert_response :success
  end

  test "should get new" do
    get new_location_owner_url
    assert_response :success
  end

  test "should create location_owner" do
    assert_difference('LocationOwner.count') do
      post location_owners_url, params: { location_owner: { business_name: @location_owner.business_name, document_number: @location_owner.document_number, name: @location_owner.name } }
    end

    assert_redirected_to location_owner_url(LocationOwner.last)
  end

  test "should show location_owner" do
    get location_owner_url(@location_owner)
    assert_response :success
  end

  test "should get edit" do
    get edit_location_owner_url(@location_owner)
    assert_response :success
  end

  test "should update location_owner" do
    patch location_owner_url(@location_owner), params: { location_owner: { business_name: @location_owner.business_name, document_number: @location_owner.document_number, name: @location_owner.name } }
    assert_redirected_to location_owner_url(@location_owner)
  end

  test "should destroy location_owner" do
    assert_difference('LocationOwner.count', -1) do
      delete location_owner_url(@location_owner)
    end

    assert_redirected_to location_owners_url
  end
end
