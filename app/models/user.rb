class User < ActiveRecord::Base
	validates_confirmation_of :password
	validates :email, :password, presence: true
	validates :email, uniqueness: true


	has_secure_password
	has_many :ootds
	has_many :items

	has_many :user_ootd_items
	has_many :ootd_items, through: :user_ootd_items

	has_attached_file :user_img, styles: { medium: "300x300>"}
  	validates_attachment_content_type :user_img, content_type: /\Aimage\/.*\Z/

	def self.confirm(params)
	    @user = User.find_by({email: params[:email]})
	    @user.try(:authenticate, params[:password])
  	end

end
