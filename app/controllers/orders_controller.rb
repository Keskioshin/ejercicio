class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end
  def new
    @order = Order.new
  end
  def create
    @order = Order.new(create_params)
    if @order.save
      redirect_to orders_path
    else
      render :new
    end
    
  end
  def destroy
    @order = Order.find(destroy_params)
    @order.destroy
    redirect_to orders_path
  end
  def create_params
    params.require(:order).
      permit(
        :"completed_at(2i)",
        :"completed_at(3i)",
        :"completed_at(1i)",
        :state,
        :total
      )
  end
  def destroy_params
    params.permit(:id)[:id]
  end

  def home
    get "home"
    get "home#home" as:home
end
