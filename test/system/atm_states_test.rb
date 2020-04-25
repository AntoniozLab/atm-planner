require "application_system_test_case"

class AtmStatesTest < ApplicationSystemTestCase
  setup do
    @atm_state = atm_states(:one)
  end

  test "visiting the index" do
    visit atm_states_url
    assert_selector "h1", text: "Atm States"
  end

  test "creating a Atm state" do
    visit atm_states_url
    click_on "New Atm State"

    fill_in "Atm", with: @atm_state.ATM_id
    fill_in "Name", with: @atm_state.name
    click_on "Create Atm state"

    assert_text "Atm state was successfully created"
    click_on "Back"
  end

  test "updating a Atm state" do
    visit atm_states_url
    click_on "Edit", match: :first

    fill_in "Atm", with: @atm_state.ATM_id
    fill_in "Name", with: @atm_state.name
    click_on "Update Atm state"

    assert_text "Atm state was successfully updated"
    click_on "Back"
  end

  test "destroying a Atm state" do
    visit atm_states_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Atm state was successfully destroyed"
  end
end
