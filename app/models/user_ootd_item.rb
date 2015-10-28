class UserOotdItem < ActiveRecord::Base
	belongs_to :ootd_item
  	belongs_to :user
end
