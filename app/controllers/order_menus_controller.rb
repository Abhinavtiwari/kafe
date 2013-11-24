class OrderMenusController < ApplicationController
before_action(:authorize_user)

def authorize_user
unless user_signed_in?
  redirect_to new_user_session_path, notice: "You must be signed in."
end 
end

  def index
    @order_menus = OrderMenu.all
  end

  def show
    @order_menu = OrderMenu.find_by(id: params[:id])
  end

  def new
  end

  def create
    @order_menu = OrderMenu.new
    @order_menu.weekday = params[:weekday]
    @order_menu.quantity = params[:quantity]
    @order_menu.item_bill = params[:item_bill]

    if @order_menu.save
      redirect_to order_menus_url, notice: "Order menu created successfully."
    else
      render 'new'
    end
  end

  def edit
    @order_menu = OrderMenu.find_by(id: params[:id])
  end

  def update
    @order_menu = OrderMenu.find_by(id: params[:id])
    @order_menu.weekday = params[:weekday]
    @order_menu.quantity = params[:quantity]
    @order_menu.item_bill = params[:item_bill]

    if @order_menu.save
      redirect_to order_menus_url, notice: "Order menu updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @order_menu = OrderMenu.find_by(id: params[:id])
    @order_menu.destroy

    redirect_to order_menus_url, notice: "Order menu deleted."
  end
end
