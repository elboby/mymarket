class CartController < ApplicationController
  def add
    product = Product.find(params[:product_id])

    # create cart if not exists
    if not @cart
      @cart = Cart.new
      @cart.user_id = 1
      @cart.total = 0
      @cart.save
    end

    # insert or increase the cart item
    cart_item = @cart.cart_items.where("product_id = ?", product.id)
    # byebug
    if cart_item.length == 0
      cart_item = @cart.cart_items.new
      cart_item.product = product
      cart_item.quantity = 1
    else
      cart_item = cart_item[0]
      cart_item.quantity = cart_item.quantity + 1
    end
    cart_item.save

    # update total
    @cart.total = @cart.total + product.price
    @cart.save

    flash[:success] = "You have successfully added an item to the cart."

    redirect_to '/'
  end

  def checkout
    # mark the cart as done
    @cart.status = 'CHECKEDOUT'
    @cart.save

    flash[:success] = "You have successfully checked out the cart."

    redirect_to '/'
  end
end
