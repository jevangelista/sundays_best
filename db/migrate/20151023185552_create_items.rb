class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :user_id
      t.string :item_image
      t.string :item_category
      t.string :name
      t.string :purchase_link

      t.timestamps null: false
    end
  end
end
