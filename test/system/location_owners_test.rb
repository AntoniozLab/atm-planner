require "application_system_test_case"

class LocationOwnersTest < ApplicationSystemTestCase
  setup do
    @location_owner = location_owners(:one)
  end

  test "visiting the index" do
    visit location_owners_url
    assert_selector "h1", text: "Location Owners"
  end

  test "creating a Location owner" do
    visit location_owners_url
    click_on "New Location Owner"

    fill_in "Business name", with: @location_owner.business_name
    fill_in "Document number", with: @location_owner.document_number
    fill_in "Name", with: @location_owner.name
    click_on "Create Location owner"

    assert_text "Location owner was successfully created"
    click_on "Back"
  end

  test "updating a Location owner" do
    visit location_owners_url
    click_on "Edit", match: :first

    fill_in "Business name", with: @location_owner.business_name
    fill_in "Document number", with: @location_owner.document_number
    fill_in "Name", with: @location_owner.name
    click_on "Update Location owner"

    assert_text "Location owner was successfully updated"
    click_on "Back"
  end

  test "destroying a Location owner" do
    visit location_owners_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Location owner was successfully destroyed"
  end
end
