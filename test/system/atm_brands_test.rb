require "application_system_test_case"

class AtmBrandsTest < ApplicationSystemTestCase
  setup do
    @atm_brand = atm_brands(:one)
  end

  test "visiting the index" do
    visit atm_brands_url
    assert_selector "h1", text: "Atm Brands"
  end

  test "creating a Atm brand" do
    visit atm_brands_url
    click_on "New Atm Brand"

    fill_in "Atm models", with: @atm_brand.atm_models_id
    fill_in "Description", with: @atm_brand.description
    fill_in "Name", with: @atm_brand.name
    click_on "Create Atm brand"

    assert_text "Atm brand was successfully created"
    click_on "Back"
  end

  test "updating a Atm brand" do
    visit atm_brands_url
    click_on "Edit", match: :first

    fill_in "Atm models", with: @atm_brand.atm_models_id
    fill_in "Description", with: @atm_brand.description
    fill_in "Name", with: @atm_brand.name
    click_on "Update Atm brand"

    assert_text "Atm brand was successfully updated"
    click_on "Back"
  end

  test "destroying a Atm brand" do
    visit atm_brands_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Atm brand was successfully destroyed"
  end
end
