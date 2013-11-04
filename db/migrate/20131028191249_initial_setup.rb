class InitialSetup < ActiveRecord::Migration
  def change

    create_table "cases", force: true do |t|
      t.string    "case_id"
      t.datetime  "case_date"
      t.string    "block"
      t.string    "code"
      t.string    "crime_type"
      t.string    "secondary"
      t.boolean   "arrest"
      t.string    "location"
      t.boolean   "domestic"
      t.integer   "beat"
      t.integer   "ward" 
      t.string    "nibrs"
      t.timestamps
    end

    create_table "chicago_cases", force: true do |t|
      t.string    "case_number"
      t.string    "beat"
      t.boolean   "location_needs_recoding"
      t.string    "location_longitude"
      t.string    "location_latitude"
      t.string    "x_coordinate"
      t.string    "block"
      t.string    "primary_type"
      t.string    "location_description"
      t.datetime  "date"
      t.string    "iucr" 
      t.string    "domestic"
      t.string    "case_id"
      t.string    "ward"
      t.string    "arrest"
      t.string    "description"
      t.string    "y_coordinate"
      t.string    "updated_on"
      t.string    "fbi_code"
      t.string    "longitude"
      t.string    "year"
      t.string    "community_area"
      t.string    "latitude"
      t.string    "district"
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
