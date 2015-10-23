class User < ActiveRecord::Base
	has_many :ootds
	has_many :items
end
