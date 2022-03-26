module CartsHelper

  def total_price #sums prices of all products in the basket
    total = 0
    @cart.line_items.each do |item|
      total = total + item.product.price * item.quantity
    end
    total
  end

  def cart_empty?
    current_cart.line_items.count >= 1
  end

  def current_cart
    cart = Cart.find_by(id: session[:cart_id])
    if cart.line_items.count >= 1
      @current_cart = cart
    end
  end

end
