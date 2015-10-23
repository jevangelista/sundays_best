class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :username
      t.string :password_digest
      t.string :gender
      t.string :city
      t.string :user_image

      t.timestamps null: false
    end
  end
end
