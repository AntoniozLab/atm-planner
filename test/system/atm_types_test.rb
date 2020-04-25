require "application_system_test_case"

class AtmTypesTest < ApplicationSystemTestCase
  setup do
    @atm_type = atm_types(:one)
  end

  test "visiting the index" do
    visit atm_types_url
    assert_selector "h1", text: "Atm Types"
  end

  test "creating a Atm type" do
    visit atm_types_url
    click_on "New Atm Type"

    fill_in "Atm", with: @atm_type.ATM_id
    fill_in "Description", with: @atm_type.description
    fill_in "Name", with: @atm_type.name
    click_on "Create Atm type"

    assert_text "Atm type was successfully created"
    click_on "Back"
  end

  test "updating a Atm type" do
    visit atm_types_url
    click_on "Edit", match: :first

    fill_in "Atm", with: @atm_type.ATM_id
    fill_in "Description", with: @atm_type.description
    fill_in "Name", with: @atm_type.name
    click_on "Update Atm type"

    assert_text "Atm type was successfully updated"
    click_on "Back"
  end

  test "destroying a Atm type" do
    visit atm_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Atm type was successfully destroyed"
  end
end
