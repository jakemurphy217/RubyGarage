require 'test_helper'

class CarsforsalesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @carsforsale = carsforsales(:one)
  end

  test "should get index" do
    get carsforsales_url
    assert_response :success
  end

  test "should get new" do
    get new_carsforsale_url
    assert_response :success
  end

  test "should create carsforsale" do
    assert_difference('Carsforsale.count') do
      post carsforsales_url, params: { carsforsale: { brand: @carsforsale.brand, color: @carsforsale.color, description: @carsforsale.description, engine: @carsforsale.engine, mileage: @carsforsale.mileage, price: @carsforsale.price, title: @carsforsale.title, transmission: @carsforsale.transmission, year: @carsforsale.year } }
    end

    assert_redirected_to carsforsale_url(Carsforsale.last)
  end

  test "should show carsforsale" do
    get carsforsale_url(@carsforsale)
    assert_response :success
  end

  test "should get edit" do
    get edit_carsforsale_url(@carsforsale)
    assert_response :success
  end

  test "should update carsforsale" do
    patch carsforsale_url(@carsforsale), params: { carsforsale: { brand: @carsforsale.brand, color: @carsforsale.color, description: @carsforsale.description, engine: @carsforsale.engine, mileage: @carsforsale.mileage, price: @carsforsale.price, title: @carsforsale.title, transmission: @carsforsale.transmission, year: @carsforsale.year } }
    assert_redirected_to carsforsale_url(@carsforsale)
  end

  test "should destroy carsforsale" do
    assert_difference('Carsforsale.count', -1) do
      delete carsforsale_url(@carsforsale)
    end

    assert_redirected_to carsforsales_url
  end
end
