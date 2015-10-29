class CreateUserOotdItems < ActiveRecord::Migration
  def change
    create_table :user_ootd_items do |t|
     t.belongs_to :ootd_item, index: true, foreign_key: true
     t.belongs_to :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end