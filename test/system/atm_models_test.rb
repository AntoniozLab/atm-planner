require "application_system_test_case"

class AtmModelsTest < ApplicationSystemTestCase
  setup do
    @atm_model = atm_models(:one)
  end

  test "visiting the index" do
    visit atm_models_url
    assert_selector "h1", text: "Atm Models"
  end

  test "creating a Atm model" do
    visit atm_models_url
    click_on "New Atm Model"

    fill_in "Atm", with: @atm_model.ATM_id
    fill_in "Description", with: @atm_model.description
    fill_in "Name", with: @atm_model.name
    click_on "Create Atm model"

    assert_text "Atm model was successfully created"
    click_on "Back"
  end

  test "updating a Atm model" do
    visit atm_models_url
    click_on "Edit", match: :first

    fill_in "Atm", with: @atm_model.ATM_id
    fill_in "Description", with: @atm_model.description
    fill_in "Name", with: @atm_model.name
    click_on "Update Atm model"

    assert_text "Atm model was successfully updated"
    click_on "Back"
  end

  test "destroying a Atm model" do
    visit atm_models_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Atm model was successfully destroyed"
  end
end
