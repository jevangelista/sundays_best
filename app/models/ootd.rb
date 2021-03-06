class Ootd < ActiveRecord::Base
	acts_as_votable
	belongs_to :user
	has_many :taggings
	has_many :tags, through: :taggings, dependent: :destroy
	has_many :ootd_items
	has_many :items, through: :ootd_items
	accepts_nested_attributes_for :ootd_items
	has_attached_file :ootd_img, styles: { medium: "300x300>"}
  	validates_attachment_content_type :ootd_img, content_type: /\Aimage\/.*\Z/

  	def self.search(search)
	  where("trend LIKE ?", "%#{search}%") 
	end

	def all_tags=(names)
      self.tags = names.split(", ").map do |name|
      Tag.where(name: name.strip).first_or_create!
	    end
	  end

	  def all_tags
	    self.tags.map(&:name).join(", ")
	  end

	  def self.tagged_with(name)
	  Tag.find_by_name!(name).ootds
	end

end
