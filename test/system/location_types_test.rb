require "application_system_test_case"

class LocationTypesTest < ApplicationSystemTestCase
  setup do
    @location_type = location_types(:one)
  end

  test "visiting the index" do
    visit location_types_url
    assert_selector "h1", text: "Location Types"
  end

  test "creating a Location type" do
    visit location_types_url
    click_on "New Location Type"

    fill_in "Description", with: @location_type.description
    fill_in "Name", with: @location_type.name
    click_on "Create Location type"

    assert_text "Location type was successfully created"
    click_on "Back"
  end

  test "updating a Location type" do
    visit location_types_url
    click_on "Edit", match: :first

    fill_in "Description", with: @location_type.description
    fill_in "Name", with: @location_type.name
    click_on "Update Location type"

    assert_text "Location type was successfully updated"
    click_on "Back"
  end

  test "destroying a Location type" do
    visit location_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Location type was successfully destroyed"
  end
end
