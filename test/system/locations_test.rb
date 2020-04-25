require "application_system_test_case"

class LocationsTest < ApplicationSystemTestCase
  setup do
    @location = locations(:one)
  end

  test "visiting the index" do
    visit locations_url
    assert_selector "h1", text: "Locations"
  end

  test "creating a Location" do
    visit locations_url
    click_on "New Location"

    fill_in "Active state", with: @location.active_state
    fill_in "Address", with: @location.address
    fill_in "Address reference", with: @location.address_reference
    fill_in "District", with: @location.district_id
    fill_in "Location owner", with: @location.location_owner_id
    fill_in "Location type", with: @location.location_type_id
    fill_in "Name", with: @location.name
    fill_in "Reference code", with: @location.reference_code
    click_on "Create Location"

    assert_text "Location was successfully created"
    click_on "Back"
  end

  test "updating a Location" do
    visit locations_url
    click_on "Edit", match: :first

    fill_in "Active state", with: @location.active_state
    fill_in "Address", with: @location.address
    fill_in "Address reference", with: @location.address_reference
    fill_in "District", with: @location.district_id
    fill_in "Location owner", with: @location.location_owner_id
    fill_in "Location type", with: @location.location_type_id
    fill_in "Name", with: @location.name
    fill_in "Reference code", with: @location.reference_code
    click_on "Update Location"

    assert_text "Location was successfully updated"
    click_on "Back"
  end

  test "destroying a Location" do
    visit locations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Location was successfully destroyed"
  end
end
