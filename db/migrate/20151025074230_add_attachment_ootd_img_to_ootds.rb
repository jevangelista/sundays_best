class AddAttachmentOotdImgToOotds < ActiveRecord::Migration
  def self.up
    change_table :ootds do |t|
      t.attachment :ootd_img
    end
  end

  def self.down
    remove_attachment :ootds, :ootd_img
  end
end
