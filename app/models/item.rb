class Item < ActiveRecord::Base
	belongs_to :user
	has_many :ootd_items
	has_and_belongs_to_many :ootds
	accepts_nested_attributes_for :ootd_items

	has_many :favorite_items  
  	has_many :favorited_by, through: :favorite_items, source: :user 

	has_attached_file :item_img, styles: { medium: "300x300>"}
  	validates_attachment_content_type :item_img, content_type: /\Aimage\/.*\Z/

end
