class CreateDayMenus < ActiveRecord::Migration
  def change
    create_table :day_menus do |t|
      t.string :weekday
    end
  end
end
