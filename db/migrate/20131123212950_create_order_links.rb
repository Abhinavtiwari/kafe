class CreateOrderLinks < ActiveRecord::Migration
  def change
    create_table :order_links do |t|
      t.integer :order_menu_id
      t.integer :todays_special_id
    end
  end
end
