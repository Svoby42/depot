module CartsHelper

  def total_price #sums prices of all products in the basket
    total = 0
    @cart.line_items.each do |item|
      total = total + item.product.price
    end
    total
  end

  def cart_empty?
    return @cart.line_items.count >= 1
  end

end
