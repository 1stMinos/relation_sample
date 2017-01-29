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

ActiveRecord::Schema.define(version: 20160508060708) do

  create_table "from_station_ways", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "from_stations", force: :cascade do |t|
    t.integer  "office_id"
    t.integer  "from_station_way_id"
    t.integer  "minutes"
    t.string   "comment"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  add_index "from_stations", ["from_station_way_id"], name: "index_from_stations_on_from_station_way_id"
  add_index "from_stations", ["office_id"], name: "index_from_stations_on_office_id"

  create_table "gyotais", force: :cascade do |t|
    t.string   "name"
    t.integer  "parent_id"
    t.string   "parent_name"
    t.text     "comment"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "office_gyotais", force: :cascade do |t|
    t.integer  "office_id"
    t.integer  "gyotai_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "office_gyotais", ["gyotai_id"], name: "index_office_gyotais_on_gyotai_id"
  add_index "office_gyotais", ["office_id"], name: "index_office_gyotais_on_office_id"

  create_table "offices", force: :cascade do |t|
    t.string   "name"
    t.decimal  "latitude"
    t.decimal  "longitude"
    t.text     "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "station_from_stations", force: :cascade do |t|
    t.integer  "station_id"
    t.integer  "from_station_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "station_from_stations", ["from_station_id"], name: "index_station_from_stations_on_from_station_id"
  add_index "station_from_stations", ["station_id"], name: "index_station_from_stations_on_station_id"

  create_table "stations", force: :cascade do |t|
    t.string   "name"
    t.decimal  "latitude"
    t.decimal  "longitude"
    t.text     "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
