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

ActiveRecord::Schema.define(version: 20151023190130) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "items", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "item_image"
    t.string   "item_category"
    t.string   "name"
    t.string   "purchase_link"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "ootd_items", force: :cascade do |t|
    t.integer  "ootd_id"
    t.integer  "item_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ootds", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "ootd_image"
    t.string   "trend"
    t.string   "caption"
    t.integer  "likes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "taggings", force: :cascade do |t|
    t.integer  "ootd_id"
    t.integer  "tag_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tags", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "username"
    t.string   "password_digest"
    t.string   "gender"
    t.string   "city"
    t.string   "user_image"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end