class RemoveOrderMenuIdFromTodaysSpecials < ActiveRecord::Migration
  def change
    remove_column :todays_specials, :order_menu_id, :integer
  end
end
