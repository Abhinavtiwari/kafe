class AddOrderMenuIdToTodaysSpecials < ActiveRecord::Migration
  def change
    add_column :todays_specials, :order_menu_id, :integer
  end
end
