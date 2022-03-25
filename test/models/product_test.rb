require "test_helper"

class ProductTest < ActiveSupport::TestCase

  test "product attributes must not be empty" do
    product = Product.new
    assert product.invalid?
    assert product.errors[:title].any?
    assert product.errors[:description].any?
    assert product.errors[:price].any?
    assert product.errors[:image_url].any?
  end

  test "price of product must be positive" do
    product = Product.new(title: "kniha jedna", description: "kniha kniha", image_url: "kniha.jpg")
    product.price = -1
    assert product.invalid?
    product.price = 0
    assert product.invalid?
    product.price = 1
    assert product.valid?
  end

  test "product is not valid without a unique title" do
    product = Product.new(title: products(:two).title, description: "popis", price: 1, image_url: "obr.jpg")
    assert product.invalid?
    assert_equal ["has already been taken"], product.errors[:title]
  end

end
