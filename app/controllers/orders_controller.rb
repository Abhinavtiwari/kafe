class OrdersController < ApplicationController
before_action(:authorize_user)

def authorize_user
unless user_signed_in?
  redirect_to new_user_session_path, notice: "You must be signed in."
end 
end

  def index
    @orders = Order.all
  end

  def show
    @order = Order.find_by(id: params[:id])
  end

  def new
  end

  def create
    @order = Order.new
    @order.user_id = params[:user_id]
    @order.order_status = params[:order_status]
    @order.order_total = params[:order_total]
    @order.order_date = params[:order_date]

    if @order.save
      redirect_to orders_url, notice: "Order created successfully."
    else
      render 'new'
    end
  end

  def edit
    @order = Order.find_by(id: params[:id])
  end

  def update
    @order = Order.find_by(id: params[:id])
    @order.user_id = params[:user_id]
    @order.order_status = params[:order_status]
    @order.order_total = params[:order_total]
    @order.order_date = params[:order_date]

    if @order.save
      redirect_to orders_url, notice: "Order updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @order = Order.find_by(id: params[:id])
    @order.destroy

    redirect_to orders_url, notice: "Order deleted."
  end
end
