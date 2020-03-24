require "application_system_test_case"

class CarsforsalesTest < ApplicationSystemTestCase
  setup do
    @carsforsale = carsforsales(:one)
  end

  test "visiting the index" do
    visit carsforsales_url
    assert_selector "h1", text: "Carsforsales"
  end

  test "creating a Carsforsale" do
    visit carsforsales_url
    click_on "New Carsforsale"

    fill_in "Brand", with: @carsforsale.brand
    fill_in "Color", with: @carsforsale.color
    fill_in "Description", with: @carsforsale.description
    fill_in "Engine", with: @carsforsale.engine
    fill_in "Mileage", with: @carsforsale.mileage
    fill_in "Price", with: @carsforsale.price
    fill_in "Title", with: @carsforsale.title
    fill_in "Transmission", with: @carsforsale.transmission
    fill_in "Year", with: @carsforsale.year
    click_on "Create Carsforsale"

    assert_text "Carsforsale was successfully created"
    click_on "Back"
  end

  test "updating a Carsforsale" do
    visit carsforsales_url
    click_on "Edit", match: :first

    fill_in "Brand", with: @carsforsale.brand
    fill_in "Color", with: @carsforsale.color
    fill_in "Description", with: @carsforsale.description
    fill_in "Engine", with: @carsforsale.engine
    fill_in "Mileage", with: @carsforsale.mileage
    fill_in "Price", with: @carsforsale.price
    fill_in "Title", with: @carsforsale.title
    fill_in "Transmission", with: @carsforsale.transmission
    fill_in "Year", with: @carsforsale.year
    click_on "Update Carsforsale"

    assert_text "Carsforsale was successfully updated"
    click_on "Back"
  end

  test "destroying a Carsforsale" do
    visit carsforsales_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Carsforsale was successfully destroyed"
  end
end
