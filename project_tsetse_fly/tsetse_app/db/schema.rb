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

ActiveRecord::Schema.define(version: 20140501155437) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "routes", force: true do |t|
    t.string   "starting_point"
    t.string   "end_point"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "stations", force: true do |t|
    t.float    "latitude"
    t.float    "longitude"
    t.string   "state"
    t.string   "city"
    t.string   "highway_exit"
    t.float    "unleaded"
    t.float    "midgrade"
    t.float    "premium"
    t.float    "diesel"
    t.integer  "store_num"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "location"
    t.string   "password_digest"
    t.string   "remember_token"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
