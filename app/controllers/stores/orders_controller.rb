class Stores::OrdersController < Stores::StoresController
  def index
    @orders = current_store.orders
  end

  def show
    @order = current_store.orders.find_by(id: params[:id])

    redirect_to store_orders_path(store: current_store.url), notice: "Order not found." if @order.nil?
  end
end
