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

ActiveRecord::Schema.define(version: 20160328130559) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bikes", force: :cascade do |t|
    t.string   "model"
    t.integer  "rating"
    t.string   "year"
    t.string   "displacement"
    t.string   "brand"
    t.string   "bike_type"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "description"
    t.string   "mileage"
    t.string   "photo"
  end

  create_table "bookings", force: :cascade do |t|
    t.string   "checkin"
    t.string   "checkout"
    t.integer  "bike_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "bookings", ["bike_id"], name: "index_bookings_on_bike_id", using: :btree
  add_index "bookings", ["user_id"], name: "index_bookings_on_user_id", using: :btree

  create_table "profiles", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "phone_number"
    t.integer  "user_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "profiles", ["user_id"], name: "index_profiles_on_user_id", using: :btree

  create_table "reviews", force: :cascade do |t|
    t.text     "description"
    t.integer  "rating"
    t.integer  "user_id"
    t.integer  "bike_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "reviews", ["bike_id"], name: "index_reviews_on_bike_id", using: :btree
  add_index "reviews", ["user_id"], name: "index_reviews_on_user_id", using: :btree

  create_table "roles", force: :cascade do |t|
    t.boolean  "owner"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "roles", ["user_id"], name: "index_roles_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "photo"
  end

  add_foreign_key "bookings", "bikes"
  add_foreign_key "bookings", "users"
  add_foreign_key "profiles", "users"
  add_foreign_key "reviews", "bikes"
  add_foreign_key "reviews", "users"
  add_foreign_key "roles", "users"
end
