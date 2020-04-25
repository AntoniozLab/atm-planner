require 'test_helper'

class LocationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @location = locations(:one)
  end

  test "should get index" do
    get locations_url
    assert_response :success
  end

  test "should get new" do
    get new_location_url
    assert_response :success
  end

  test "should create location" do
    assert_difference('Location.count') do
      post locations_url, params: { location: { active_state: @location.active_state, address: @location.address, address_reference: @location.address_reference, district_id: @location.district_id, location_owner_id: @location.location_owner_id, location_type_id: @location.location_type_id, name: @location.name, reference_code: @location.reference_code } }
    end

    assert_redirected_to location_url(Location.last)
  end

  test "should show location" do
    get location_url(@location)
    assert_response :success
  end

  test "should get edit" do
    get edit_location_url(@location)
    assert_response :success
  end

  test "should update location" do
    patch location_url(@location), params: { location: { active_state: @location.active_state, address: @location.address, address_reference: @location.address_reference, district_id: @location.district_id, location_owner_id: @location.location_owner_id, location_type_id: @location.location_type_id, name: @location.name, reference_code: @location.reference_code } }
    assert_redirected_to location_url(@location)
  end

  test "should destroy location" do
    assert_difference('Location.count', -1) do
      delete location_url(@location)
    end

    assert_redirected_to locations_url
  end
end
