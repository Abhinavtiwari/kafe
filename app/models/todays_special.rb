class TodaysSpecial < ActiveRecord::Base
	has_many :order_links
	belongs_to :item_menu
	belongs_to :day_menu 
end
