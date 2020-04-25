require "application_system_test_case"

class RequirementDetailsTest < ApplicationSystemTestCase
  setup do
    @requirement_detail = requirement_details(:one)
  end

  test "visiting the index" do
    visit requirement_details_url
    assert_selector "h1", text: "Requirement Details"
  end

  test "creating a Requirement detail" do
    visit requirement_details_url
    click_on "New Requirement Detail"

    fill_in "Atm new", with: @requirement_detail.atm_new
    fill_in "Atm old", with: @requirement_detail.atm_old
    fill_in "Cancel observation", with: @requirement_detail.cancel_observation
    fill_in "Description", with: @requirement_detail.description
    fill_in "End date", with: @requirement_detail.end_date
    fill_in "Requirement detail reason", with: @requirement_detail.requirement_detail_reason_id
    fill_in "Requirement detail state", with: @requirement_detail.requirement_detail_state_id
    fill_in "Requirement", with: @requirement_detail.requirement_id
    fill_in "Requirement type", with: @requirement_detail.requirement_type_id
    fill_in "Start date", with: @requirement_detail.start_date
    click_on "Create Requirement detail"

    assert_text "Requirement detail was successfully created"
    click_on "Back"
  end

  test "updating a Requirement detail" do
    visit requirement_details_url
    click_on "Edit", match: :first

    fill_in "Atm new", with: @requirement_detail.atm_new
    fill_in "Atm old", with: @requirement_detail.atm_old
    fill_in "Cancel observation", with: @requirement_detail.cancel_observation
    fill_in "Description", with: @requirement_detail.description
    fill_in "End date", with: @requirement_detail.end_date
    fill_in "Requirement detail reason", with: @requirement_detail.requirement_detail_reason_id
    fill_in "Requirement detail state", with: @requirement_detail.requirement_detail_state_id
    fill_in "Requirement", with: @requirement_detail.requirement_id
    fill_in "Requirement type", with: @requirement_detail.requirement_type_id
    fill_in "Start date", with: @requirement_detail.start_date
    click_on "Update Requirement detail"

    assert_text "Requirement detail was successfully updated"
    click_on "Back"
  end

  test "destroying a Requirement detail" do
    visit requirement_details_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Requirement detail was successfully destroyed"
  end
end
