require "application_system_test_case"

class RequirementStatesTest < ApplicationSystemTestCase
  setup do
    @requirement_state = requirement_states(:one)
  end

  test "visiting the index" do
    visit requirement_states_url
    assert_selector "h1", text: "Requirement States"
  end

  test "creating a Requirement state" do
    visit requirement_states_url
    click_on "New Requirement State"

    fill_in "Name", with: @requirement_state.name
    click_on "Create Requirement state"

    assert_text "Requirement state was successfully created"
    click_on "Back"
  end

  test "updating a Requirement state" do
    visit requirement_states_url
    click_on "Edit", match: :first

    fill_in "Name", with: @requirement_state.name
    click_on "Update Requirement state"

    assert_text "Requirement state was successfully updated"
    click_on "Back"
  end

  test "destroying a Requirement state" do
    visit requirement_states_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Requirement state was successfully destroyed"
  end
end
