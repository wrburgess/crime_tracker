class InitialSetup < ActiveRecord::Migration
  def change

    create_table "cases", force: true do |t|
      t.datetime  "case_date"
      t.string    "beat"
      t.string    "block"
      t.string    "case_number"
      t.string    "community_area"
      t.datetime  "date_occurred"
      t.string    "iucr_description"
      t.string    "district"
      t.string    "iucr"
      t.datetime  "source_updated_at"
      t.string    "location_description"
      t.string    "primary_type"
      t.string    "ward"
      t.integer   "x_coordinate"
      t.integer   "y_coordinate"
      t.float     "longitude"
      t.float     "latitude"
      t.integer   "fbi_code" 
      t.boolean   "arrest"
      t.boolean   "domestic"
      t.integer   "chicago_id"
      t.boolean   "sourced_clear"
      t.boolean   "sourced_chicago"
      t.integer   "year"
      t.timestamps
    end

    create_table "chicago_cases", force: true do |t|
      t.datetime  "case_date"
      t.string    "beat"
      t.string    "block"
      t.string    "case_number"
      t.string    "community_area"
      t.string    "district"
      t.string    "iucr" 
      t.datetime  "updated_on"
      t.string    "location_description"
      t.string    "primary_type"
      t.string    "ward"
      t.string    "x_coordinate"
      t.string    "y_coordinate"
      t.string    "longitude"
      t.string    "latitude"
      t.string    "fbi_code"
      t.string    "arrest"
      t.string    "domestic"
      t.integer   "chicago_id"
      t.integer   "year"
      t.timestamps
    end

    create_table "clear_cases", force: true do |t|
      t.string    "beat"
      t.string    "block"
      t.string    "rd_no"
      t.integer   "community_area"
      t.datetime  "date_occurred"
      t.string    "iucr_description"
      t.string    "cpd_district"
      t.string    "iucr"
      t.datetime  "last_updated"
      t.string    "location_desc" 
      t.string    "primary"
      t.string    "ward"
      t.integer   "x_coordinate"
      t.integer   "y_coordinate"
      t.timestamps
    end

  end
end
