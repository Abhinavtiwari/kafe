class DayMenusController < ApplicationController
before_action(:authorize_user)

def authorize_user
unless user_signed_in?
  redirect_to new_user_session_path, notice: "You must be signed in."
end 
end

  def index
    @day_menus = DayMenu.all
  end

  def show
    @day_menu = DayMenu.find_by(id: params[:id])
  end

  def new
  end

  def create
    @day_menu = DayMenu.new
    @day_menu.weekday = params[:weekday]

    if @day_menu.save
      redirect_to day_menus_url, notice: "Day menu created successfully."
    else
      render 'new'
    end
  end

  def edit
    @day_menu = DayMenu.find_by(id: params[:id])
  end

  def update
    @day_menu = DayMenu.find_by(id: params[:id])
    @day_menu.weekday = params[:weekday]

    if @day_menu.save
      redirect_to day_menus_url, notice: "Day menu updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @day_menu = DayMenu.find_by(id: params[:id])
    @day_menu.destroy

    redirect_to day_menus_url, notice: "Day menu deleted."
  end
end
