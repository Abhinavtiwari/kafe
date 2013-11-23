class CreateOrderMenus < ActiveRecord::Migration
  def change
    create_table :order_menus do |t|
      t.string :weekday
      t.integer :quantity
      t.float :item_bill
    end
  end
end
