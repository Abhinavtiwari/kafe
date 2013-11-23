class TodaysSpecialsController < ApplicationController

  def index
    @todays_specials = TodaysSpecial
    @todays_specials = TodaysSpecial.order(params[:sort]) if params[:sort]
    @todays_specials = @todays_specials.all
  end

  def show
    @todays_special = TodaysSpecial.find_by(id: params[:id])
  end

  def new
  end

  def create
    @todays_special = TodaysSpecial.new
    @todays_special.day_menu_id = params[:day_menu_id]
    @todays_special.item_menu_id = params[:item_menu_id]
    @todays_special.cuisine = params[:cuisine]

    if @todays_special.save
      redirect_to todays_specials_url, notice: "Todays special created successfully."
    else
      render 'new'
    end
  end

  def edit
    @todays_special = TodaysSpecial.find_by(id: params[:id])
  end

  def update
    @todays_special = TodaysSpecial.find_by(id: params[:id])
    @todays_special.day_menu_id = params[:day_menu_id]
    @todays_special.item_menu_id = params[:item_menu_id]
    @todays_special.cuisine = params[:cuisine]

    if @todays_special.save
      redirect_to todays_specials_url, notice: "Todays special updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @todays_special = TodaysSpecial.find_by(id: params[:id])
    @todays_special.destroy

    redirect_to todays_specials_url, notice: "Todays special deleted."
  end
end
