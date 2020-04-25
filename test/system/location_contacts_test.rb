require "application_system_test_case"

class LocationContactsTest < ApplicationSystemTestCase
  setup do
    @location_contact = location_contacts(:one)
  end

  test "visiting the index" do
    visit location_contacts_url
    assert_selector "h1", text: "Location Contacts"
  end

  test "creating a Location contact" do
    visit location_contacts_url
    click_on "New Location Contact"

    fill_in "Email", with: @location_contact.email
    fill_in "First name", with: @location_contact.first_name
    fill_in "Last name", with: @location_contact.last_name
    fill_in "Location", with: @location_contact.location_id
    fill_in "Phone", with: @location_contact.phone
    fill_in "Position name", with: @location_contact.position_name
    click_on "Create Location contact"

    assert_text "Location contact was successfully created"
    click_on "Back"
  end

  test "updating a Location contact" do
    visit location_contacts_url
    click_on "Edit", match: :first

    fill_in "Email", with: @location_contact.email
    fill_in "First name", with: @location_contact.first_name
    fill_in "Last name", with: @location_contact.last_name
    fill_in "Location", with: @location_contact.location_id
    fill_in "Phone", with: @location_contact.phone
    fill_in "Position name", with: @location_contact.position_name
    click_on "Update Location contact"

    assert_text "Location contact was successfully updated"
    click_on "Back"
  end

  test "destroying a Location contact" do
    visit location_contacts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Location contact was successfully destroyed"
  end
end
