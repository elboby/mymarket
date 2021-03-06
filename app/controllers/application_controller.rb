class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :load_cart

  protected
    def load_cart
      @cart = Cart.where("status is null").where("user_id = ?", 1).last
    end
end
