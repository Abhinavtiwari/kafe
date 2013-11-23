class ItemMenu < ActiveRecord::Base
	has_many :todays_specials
	has_many :day_menus, :through => :todays_specials
end
