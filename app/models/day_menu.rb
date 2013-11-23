class DayMenu < ActiveRecord::Base
	has_many :todays_specials
	has_many :item_menus, :through => :todays_specials
end
