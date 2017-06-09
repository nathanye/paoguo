class CartItemsController < ApplicationController
  before_action :authenticate_user!

  def destroy
    @cart = current_cart
    @cart_item = @cart.cart_items.find_by(pp1: params[:id])
    @product = @cart_item.pp1
    @cart_item.destroy

    flash[:warning] = "成功将 #{@cart_item.pp1.product.title} 从购物车删除！"
    redirect_to :back
  end
end
