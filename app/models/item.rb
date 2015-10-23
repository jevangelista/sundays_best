class Item < ActiveRecord::Base
	belongs_to :user
	has_many :ootd_items
	has_many :ootds, through: :ootd_item
end
