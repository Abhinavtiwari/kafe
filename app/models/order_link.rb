class OrderLink < ActiveRecord::Base
belongs_to :order_menu
belongs_to :todays_special
end
