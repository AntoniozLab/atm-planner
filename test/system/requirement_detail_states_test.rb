require "application_system_test_case"

class RequirementDetailStatesTest < ApplicationSystemTestCase
  setup do
    @requirement_detail_state = requirement_detail_states(:one)
  end

  test "visiting the index" do
    visit requirement_detail_states_url
    assert_selector "h1", text: "Requirement Detail States"
  end

  test "creating a Requirement detail state" do
    visit requirement_detail_states_url
    click_on "New Requirement Detail State"

    fill_in "Name", with: @requirement_detail_state.name
    click_on "Create Requirement detail state"

    assert_text "Requirement detail state was successfully created"
    click_on "Back"
  end

  test "updating a Requirement detail state" do
    visit requirement_detail_states_url
    click_on "Edit", match: :first

    fill_in "Name", with: @requirement_detail_state.name
    click_on "Update Requirement detail state"

    assert_text "Requirement detail state was successfully updated"
    click_on "Back"
  end

  test "destroying a Requirement detail state" do
    visit requirement_detail_states_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Requirement detail state was successfully destroyed"
  end
end
