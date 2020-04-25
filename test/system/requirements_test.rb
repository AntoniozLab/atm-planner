require "application_system_test_case"

class RequirementsTest < ApplicationSystemTestCase
  setup do
    @requirement = requirements(:one)
  end

  test "visiting the index" do
    visit requirements_url
    assert_selector "h1", text: "Requirements"
  end

  test "creating a Requirement" do
    visit requirements_url
    click_on "New Requirement"

    fill_in "Attachment url", with: @requirement.attachment_url
    fill_in "Completion date", with: @requirement.completion_date
    fill_in "Description", with: @requirement.description
    fill_in "Location", with: @requirement.location_id
    fill_in "Percentage success", with: @requirement.percentage_success
    fill_in "Request date", with: @requirement.request_date
    fill_in "Requirement state", with: @requirement.requirement_state_id
    fill_in "User assigned", with: @requirement.user_assigned
    fill_in "User", with: @requirement.user_id
    click_on "Create Requirement"

    assert_text "Requirement was successfully created"
    click_on "Back"
  end

  test "updating a Requirement" do
    visit requirements_url
    click_on "Edit", match: :first

    fill_in "Attachment url", with: @requirement.attachment_url
    fill_in "Completion date", with: @requirement.completion_date
    fill_in "Description", with: @requirement.description
    fill_in "Location", with: @requirement.location_id
    fill_in "Percentage success", with: @requirement.percentage_success
    fill_in "Request date", with: @requirement.request_date
    fill_in "Requirement state", with: @requirement.requirement_state_id
    fill_in "User assigned", with: @requirement.user_assigned
    fill_in "User", with: @requirement.user_id
    click_on "Update Requirement"

    assert_text "Requirement was successfully updated"
    click_on "Back"
  end

  test "destroying a Requirement" do
    visit requirements_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Requirement was successfully destroyed"
  end
end
