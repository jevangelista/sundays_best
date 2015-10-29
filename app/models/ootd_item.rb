class OotdItem < ActiveRecord::Base
	belongs_to :ootd
	belongs_to :item
	accepts_nested_attributes_for :item

	has_many :user_ootd_items
	has_many :ootds, through: :user_ootd_items
end
