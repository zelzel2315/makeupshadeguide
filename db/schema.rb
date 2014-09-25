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

ActiveRecord::Schema.define(version: 20140925043320) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "makeups", force: true do |t|
    t.string   "brand"
    t.string   "product"
    t.string   "shade"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.binary   "image"
    t.integer  "true_shade_id"
    t.text     "description"
  end

  add_index "makeups", ["true_shade_id"], name: "index_makeups_on_true_shade_id", using: :btree

  create_table "reviews", force: true do |t|
    t.integer  "user_id"
    t.integer  "makeup_id"
    t.integer  "rating"
    t.text     "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "reviews", ["makeup_id"], name: "index_reviews_on_makeup_id", using: :btree
  add_index "reviews", ["user_id"], name: "index_reviews_on_user_id", using: :btree

  create_table "true_shades", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "description"
  end

  create_table "user_makeups", force: true do |t|
    t.integer  "makeup_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "user_makeups", ["makeup_id"], name: "index_user_makeups_on_makeup_id", using: :btree
  add_index "user_makeups", ["user_id"], name: "index_user_makeups_on_user_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.string   "brand"
    t.string   "product"
    t.string   "shade"
    t.integer  "true_shade_id"
  end

  add_index "users", ["true_shade_id"], name: "index_users_on_true_shade_id", using: :btree

end
