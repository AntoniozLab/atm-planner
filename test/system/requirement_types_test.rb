require "application_system_test_case"

class RequirementTypesTest < ApplicationSystemTestCase
  setup do
    @requirement_type = requirement_types(:one)
  end

  test "visiting the index" do
    visit requirement_types_url
    assert_selector "h1", text: "Requirement Types"
  end

  test "creating a Requirement type" do
    visit requirement_types_url
    click_on "New Requirement Type"

    fill_in "Description", with: @requirement_type.description
    fill_in "Name", with: @requirement_type.name
    click_on "Create Requirement type"

    assert_text "Requirement type was successfully created"
    click_on "Back"
  end

  test "updating a Requirement type" do
    visit requirement_types_url
    click_on "Edit", match: :first

    fill_in "Description", with: @requirement_type.description
    fill_in "Name", with: @requirement_type.name
    click_on "Update Requirement type"

    assert_text "Requirement type was successfully updated"
    click_on "Back"
  end

  test "destroying a Requirement type" do
    visit requirement_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Requirement type was successfully destroyed"
  end
end
