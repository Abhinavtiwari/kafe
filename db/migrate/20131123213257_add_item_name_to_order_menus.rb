class AddItemNameToOrderMenus < ActiveRecord::Migration
  def change
    add_column :order_menus, :item_name, :string
  end
end
