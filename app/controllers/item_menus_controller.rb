class ItemMenusController < ApplicationController

  def index
    @item_menus = ItemMenu.all
    @item_menus = ItemMenu.order(params[:sort]) if params[:sort]
    @item_menus = @item_menus.all
  end

  def show
    @item_menu = ItemMenu.find_by(id: params[:id])
  end

  def new
  end

  def create
    @item_menu = ItemMenu.new
    @item_menu.item_name = params[:item_name]
    @item_menu.item_category = params[:item_category]
    @item_menu.item_picture = params[:item_picture]
    @item_menu.item_price = params[:item_price]
    @item_menu.item_description = params[:item_description]

    if @item_menu.save
      redirect_to item_menus_url, notice: "Item menu created successfully."
    else
      render 'new'
    end
  end

  def edit
    @item_menu = ItemMenu.find_by(id: params[:id])
  end

  def update
    @item_menu = ItemMenu.find_by(id: params[:id])
    @item_menu.item_name = params[:item_name]
    @item_menu.item_category = params[:item_category]
    @item_menu.item_picture = params[:item_picture]
    @item_menu.item_price = params[:item_price]
    @item_menu.item_description = params[:item_description]

    if @item_menu.save
      redirect_to item_menus_url, notice: "Item menu updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @item_menu = ItemMenu.find_by(id: params[:id])
    @item_menu.destroy

    redirect_to item_menus_url, notice: "Item menu deleted."
  end
end
