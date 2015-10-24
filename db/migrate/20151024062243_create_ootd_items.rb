class CreateOotdItems < ActiveRecord::Migration
  def change
    create_table :ootd_items do |t|
      t.belongs_to :ootd, index: true, foreign_key: true
      t.belongs_to :item, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
