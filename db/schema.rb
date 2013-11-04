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

ActiveRecord::Schema.define(version: 20131028191249) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cases", force: true do |t|
    t.string   "case_id"
    t.datetime "case_date"
    t.string   "block"
    t.string   "code"
    t.string   "crime_type"
    t.string   "secondary"
    t.boolean  "arrest"
    t.string   "location"
    t.boolean  "domestic"
    t.integer  "beat"
    t.integer  "ward"
    t.string   "nibrs"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "chicago_cases", force: true do |t|
    t.string   "case_number"
    t.string   "beat"
    t.boolean  "location_needs_recoding"
    t.string   "location_longitude"
    t.string   "location_latitude"
    t.string   "x_coordinate"
    t.string   "block"
    t.string   "primary_type"
    t.string   "location_description"
    t.datetime "date"
    t.string   "iucr"
    t.string   "domestic"
    t.string   "case_id"
    t.string   "ward"
    t.string   "arrest"
    t.string   "description"
    t.string   "y_coordinate"
    t.string   "updated_on"
    t.string   "fbi_code"
    t.string   "longitude"
    t.string   "year"
    t.string   "community_area"
    t.string   "latitude"
    t.string   "district"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clear_cases", force: true do |t|
    t.string   "beat"
    t.string   "block"
    t.string   "rd_no"
    t.integer  "community_area"
    t.datetime "date_occurred"
    t.string   "iucr_description"
    t.string   "cpd_district"
    t.string   "iucr"
    t.datetime "last_updated"
    t.string   "location_desc"
    t.string   "primary"
    t.string   "ward"
    t.integer  "x_coordinate"
    t.integer  "y_coordinate"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
