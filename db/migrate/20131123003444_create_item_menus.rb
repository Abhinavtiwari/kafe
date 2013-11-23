class CreateItemMenus < ActiveRecord::Migration
  def change
    create_table :item_menus do |t|
      t.string :item_name
      t.string :item_category
      t.string :item_picture
      t.float :item_price
      t.string :item_description
    end
  end
end
