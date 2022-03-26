module CartsHelper

  def total_price #sums prices of all products in the basket
    total = 0
    @cart.line_items.each do |item|
      total = total + item.product.price * item.quantity
    end
    total
  end

  def cart_empty?
    !current_cart.nil?
  end

  def current_cart
    if (cart_id = session[:cart_id])
      cart = Cart.find_by(id: session[:cart_id])
      @current_cart = cart
    end
  end

end
