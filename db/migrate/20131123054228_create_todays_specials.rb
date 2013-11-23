class CreateTodaysSpecials < ActiveRecord::Migration
  def change
    create_table :todays_specials do |t|
      t.integer :day_menu_id
      t.integer :item_menu_id
      t.string :cuisine
    end
  end
end
