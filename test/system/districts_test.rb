require "application_system_test_case"

class DistrictsTest < ApplicationSystemTestCase
  setup do
    @district = districts(:one)
  end

  test "visiting the index" do
    visit districts_url
    assert_selector "h1", text: "Districts"
  end

  test "creating a District" do
    visit districts_url
    click_on "New District"

    fill_in "Name", with: @district.name
    fill_in "Province", with: @district.province_id
    fill_in "Ubigeo", with: @district.ubigeo
    click_on "Create District"

    assert_text "District was successfully created"
    click_on "Back"
  end

  test "updating a District" do
    visit districts_url
    click_on "Edit", match: :first

    fill_in "Name", with: @district.name
    fill_in "Province", with: @district.province_id
    fill_in "Ubigeo", with: @district.ubigeo
    click_on "Update District"

    assert_text "District was successfully updated"
    click_on "Back"
  end

  test "destroying a District" do
    visit districts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "District was successfully destroyed"
  end
end
