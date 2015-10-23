class CreateOotds < ActiveRecord::Migration
  def change
    create_table :ootds do |t|
      t.integer :user_id
      t.string :ootd_image
      t.string :trend
      t.string :caption
      t.integer :likes

      t.timestamps null: false
    end
  end
end
