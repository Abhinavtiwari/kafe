class OrderLinksController < ApplicationController

  def index
    @order_links = OrderLink.all
  end

  def show
    @order_link = OrderLink.find_by(id: params[:id])
  end

  def new
  end

  def create
    @order_link = OrderLink.new
    @order_link.order_menu_id = params[:order_menu_id]
    @order_link.todays_special_id = params[:todays_special_id]

    if @order_link.save
      redirect_to order_links_url, notice: "Order link created successfully."
    else
      render 'new'
    end
  end

  def edit
    @order_link = OrderLink.find_by(id: params[:id])
  end

  def update
    @order_link = OrderLink.find_by(id: params[:id])
    @order_link.order_menu_id = params[:order_menu_id]
    @order_link.todays_special_id = params[:todays_special_id]

    if @order_link.save
      redirect_to order_links_url, notice: "Order link updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @order_link = OrderLink.find_by(id: params[:id])
    @order_link.destroy

    redirect_to order_links_url, notice: "Order link deleted."
  end
end
