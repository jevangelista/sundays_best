class Item < ActiveRecord::Base
	belongs_to :user
	has_many :ootd_items
	has_many :ootds, through: :ootd_item

	has_attached_file :item_img, styles: { medium: "300x300>"}
  	validates_attachment_content_type :item_img, content_type: /\Aimage\/.*\Z/

end
