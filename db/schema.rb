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

ActiveRecord::Schema.define(version: 20160724090427) do

  create_table "districts", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.text     "description", limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "images", force: :cascade do |t|
    t.string   "url",        limit: 255
    t.text     "content",    limit: 65535
    t.integer  "post_id",    limit: 4
    t.integer  "tower_id",   limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "images", ["post_id"], name: "index_images_on_post_id", using: :btree
  add_index "images", ["tower_id"], name: "index_images_on_tower_id", using: :btree

  create_table "posts", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.text     "content",    limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "towers", force: :cascade do |t|
    t.string   "name",              limit: 255
    t.text     "short_description", limit: 65535
    t.string   "position",          limit: 255
    t.string   "num_floor",         limit: 255
    t.string   "area",              limit: 255
    t.string   "floor_height",      limit: 255
    t.string   "parking",           limit: 255
    t.string   "evaluator",         limit: 255
    t.string   "air_condition",     limit: 255
    t.string   "open_time",         limit: 255
    t.string   "price",             limit: 255
    t.string   "map",               limit: 255
    t.integer  "district_id",       limit: 4
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  add_index "towers", ["district_id"], name: "index_towers_on_district_id", using: :btree

  add_foreign_key "images", "posts"
  add_foreign_key "images", "towers"
  add_foreign_key "towers", "districts"
end
