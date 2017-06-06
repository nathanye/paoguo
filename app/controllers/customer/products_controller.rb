class Customer::ProductsController < ApplicationController
  def index
    @product = current_user.cartted_products
  end
end
