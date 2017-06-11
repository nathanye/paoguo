class Pp1sController < ApplicationController

  before_action :authenticate_user!

  def index
    @pp1s = Pp1.all
  end
  def new
    @product = Product.find(params[:product_id])
    @pp1 = Pp1.new
  end
  def create
    @product = Product.find(params[:product_id])
    @pp1 = Pp1.new(pp1_params)
    @pp1.product = @product
    @pp1.user = current_user
    if @pp1.save
      redirect_to product_pp1_path(@product, @pp1)
    else
      render :new
    end
  end
  def show
    @product = Product.find(params[:product_id])
    @pp1 = Pp1.find(params[:id])
  end

  def add_to_cart
    @product = Product.find(params[:product_id])
    @pp1 = Pp1.find(params[:id])

    if !current_cart.pp1s.include?(@pp1)
      current_cart.add_pp1_to_cart(@product, @pp1)
      flash[:notice] = "你已成功将 #{@pp1.product.title} 加入购物车"
    else
      flash[:warning] = "你的购物车内已有此物品"
    end
    redirect_to :back

  end


  private
  def pp1_params
    # params.require(:pp1).permit(:product_id, :date, :week, :yinli, :weather, :begin_time, :finish_time, :from_where, :how_to_go, :main_place, :run_begin_time, :run_finish_time, :how_long_time, :how_long_kilos, :stretch_or_not, :how_to_go_back, :back_to_where, :about_people, :about_ideas, :about_serendipities, :about_others)
    params.require(:pp1).permit(:date, :week, :yinli, :weather, :begin_time, :finish_time, :from_where, :how_to_go, :main_place, :run_begin_time, :run_finish_time, :how_long_time, :how_long_kilos, :stretch_or_not, :how_to_go_back, :back_to_where, :about_people, :about_ideas, :about_serendipities, :about_others, :product_id)
  end
end
