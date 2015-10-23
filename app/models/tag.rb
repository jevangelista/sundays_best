class Tag < ActiveRecord::Base
	has_many :taggings
	has_many :ootds, through: :taggings

end
