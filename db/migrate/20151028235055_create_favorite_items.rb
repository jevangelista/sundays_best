class CreateFavoriteItems < ActiveRecord::Migration
  def change
    create_table :favorite_items do |t|
      t.integer :item_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
