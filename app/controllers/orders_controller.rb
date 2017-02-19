class OrdersController < ApplicationController
  def new
    @item = FoodItem.find(params[:food_item_id])
    @order = @item.orders.build
  end

  def create
    @item = FoodItem.find(params[:food_item_id])
    @order = @item.orders.build order_params

    if @order.save
      render 'thank'
    else
      render 'new'
    end
  end

  def order_params
    params.require(:order).permit(:quantity, :name, :phone, :address)
  end
end
