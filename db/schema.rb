# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20151028235055) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "favorite_items", force: :cascade do |t|
    t.integer  "item_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "items", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "item_image"
    t.string   "item_category"
    t.string   "name"
    t.string   "purchase_link"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.string   "item_img_file_name"
    t.string   "item_img_content_type"
    t.integer  "item_img_file_size"
    t.datetime "item_img_updated_at"
  end

  create_table "ootd_items", force: :cascade do |t|
    t.integer  "ootd_id"
    t.integer  "item_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "ootd_items", ["item_id"], name: "index_ootd_items_on_item_id", using: :btree
  add_index "ootd_items", ["ootd_id"], name: "index_ootd_items_on_ootd_id", using: :btree

  create_table "ootds", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "ootd_image"
    t.string   "trend"
    t.string   "caption"
    t.integer  "likes"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.string   "ootd_img_file_name"
    t.string   "ootd_img_content_type"
    t.integer  "ootd_img_file_size"
    t.datetime "ootd_img_updated_at"
  end

  create_table "taggings", force: :cascade do |t|
    t.integer  "ootd_id"
    t.integer  "tag_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "taggings", ["ootd_id"], name: "index_taggings_on_ootd_id", using: :btree
  add_index "taggings", ["tag_id"], name: "index_taggings_on_tag_id", using: :btree

  create_table "tags", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_ootd_items", force: :cascade do |t|
    t.integer  "ootd_item_id"
    t.integer  "user_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "user_ootd_items", ["ootd_item_id"], name: "index_user_ootd_items_on_ootd_item_id", using: :btree
  add_index "user_ootd_items", ["user_id"], name: "index_user_ootd_items_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "username"
    t.string   "password_digest"
    t.string   "gender"
    t.string   "city"
    t.string   "user_image"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.string   "user_img_file_name"
    t.string   "user_img_content_type"
    t.integer  "user_img_file_size"
    t.datetime "user_img_updated_at"
  end

  create_table "votes", force: :cascade do |t|
    t.integer  "votable_id"
    t.string   "votable_type"
    t.integer  "voter_id"
    t.string   "voter_type"
    t.boolean  "vote_flag"
    t.string   "vote_scope"
    t.integer  "vote_weight"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "votes", ["votable_id", "votable_type", "vote_scope"], name: "index_votes_on_votable_id_and_votable_type_and_vote_scope", using: :btree
  add_index "votes", ["voter_id", "voter_type", "vote_scope"], name: "index_votes_on_voter_id_and_voter_type_and_vote_scope", using: :btree

  add_foreign_key "ootd_items", "items"
  add_foreign_key "ootd_items", "ootds"
  add_foreign_key "taggings", "ootds"
  add_foreign_key "taggings", "tags"
  add_foreign_key "user_ootd_items", "ootd_items"
  add_foreign_key "user_ootd_items", "users"
end
