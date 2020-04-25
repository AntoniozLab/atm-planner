require "application_system_test_case"

class RequirementDetailReasonsTest < ApplicationSystemTestCase
  setup do
    @requirement_detail_reason = requirement_detail_reasons(:one)
  end

  test "visiting the index" do
    visit requirement_detail_reasons_url
    assert_selector "h1", text: "Requirement Detail Reasons"
  end

  test "creating a Requirement detail reason" do
    visit requirement_detail_reasons_url
    click_on "New Requirement Detail Reason"

    fill_in "Name", with: @requirement_detail_reason.name
    click_on "Create Requirement detail reason"

    assert_text "Requirement detail reason was successfully created"
    click_on "Back"
  end

  test "updating a Requirement detail reason" do
    visit requirement_detail_reasons_url
    click_on "Edit", match: :first

    fill_in "Name", with: @requirement_detail_reason.name
    click_on "Update Requirement detail reason"

    assert_text "Requirement detail reason was successfully updated"
    click_on "Back"
  end

  test "destroying a Requirement detail reason" do
    visit requirement_detail_reasons_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Requirement detail reason was successfully destroyed"
  end
end
