require "application_system_test_case"

class ProductsTest < ApplicationSystemTestCase
  setup do
    @product = products(:one)
  end

  test "visiting the index" do
    visit products_url
    assert_selector "h1", text: "Products"
  end

  test "should create product" do
    visit products_url
    click_on "Nový produkt"

    fill_in "Popis", with: @product.description
    fill_in "Image url", with: @product.image_url
    fill_in "Cena", with: @product.price
    fill_in "Název", with: @product.title
    click_on "Uložit"

    assert_text "Product was successfully created"
    click_on "Zpátky"
  end

  test "should update Product" do
    visit product_url(@product)
    click_on "Upravit", match: :first

    fill_in "Popis", with: @product.description
    fill_in "Image url", with: @product.image_url
    fill_in "Cena", with: @product.price
    fill_in "Název", with: @product.title
    click_on "Uložit"

    assert_text "Product was successfully updated"
    click_on "Zpátky"
  end

  test "should destroy Product" do
    visit product_url(@product)
    click_on "Smazat", match: :first

    assert_text "Product was successfully destroyed"
  end

end
