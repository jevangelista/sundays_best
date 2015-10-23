class Ootd < ActiveRecord::Base
	belongs_to :user
	has_many :taggings
	has_many :tags, through: :taggings, dependent: :destroy
	has_many :ootd_items
	has_many :items, through: :ootd_tems


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
