require 'test_helper'

class LocationContactsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @location_contact = location_contacts(:one)
  end

  test "should get index" do
    get location_contacts_url
    assert_response :success
  end

  test "should get new" do
    get new_location_contact_url
    assert_response :success
  end

  test "should create location_contact" do
    assert_difference('LocationContact.count') do
      post location_contacts_url, params: { location_contact: { email: @location_contact.email, first_name: @location_contact.first_name, last_name: @location_contact.last_name, location_id: @location_contact.location_id, phone: @location_contact.phone, position_name: @location_contact.position_name } }
    end

    assert_redirected_to location_contact_url(LocationContact.last)
  end

  test "should show location_contact" do
    get location_contact_url(@location_contact)
    assert_response :success
  end

  test "should get edit" do
    get edit_location_contact_url(@location_contact)
    assert_response :success
  end

  test "should update location_contact" do
    patch location_contact_url(@location_contact), params: { location_contact: { email: @location_contact.email, first_name: @location_contact.first_name, last_name: @location_contact.last_name, location_id: @location_contact.location_id, phone: @location_contact.phone, position_name: @location_contact.position_name } }
    assert_redirected_to location_contact_url(@location_contact)
  end

  test "should destroy location_contact" do
    assert_difference('LocationContact.count', -1) do
      delete location_contact_url(@location_contact)
    end

    assert_redirected_to location_contacts_url
  end
end
