class AddOrderIdToOrderMenus < ActiveRecord::Migration
  def change
    add_column :order_menus, :order_id, :integer
  end
end
