class CreateOotdItems < ActiveRecord::Migration
  def change
    create_table :ootd_items do |t|
      t.integer :ootd_id
      t.integer :item_id

      t.timestamps null: false
    end
  end
end
