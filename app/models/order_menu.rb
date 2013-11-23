class OrderMenu < ActiveRecord::Base
has_many :order_links
belongs_to :order
end
