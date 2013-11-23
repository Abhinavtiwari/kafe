class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.string :order_status
      t.float :order_total
      t.date :order_date
    end
  end
end
