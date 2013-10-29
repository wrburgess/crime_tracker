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
    end

    # create_table "cases", force: true do |t|
    #   t.string    "case_id"
    #   t.datetime  "case_date"
    #   t.string    "block"
    #   t.string    "iucr_code_id"
    #   t.boolean   "arrest"
    #   t.string    "location"
    #   t.boolean   "domestic"
    #   t.integer   "beat_id"
    #   t.integer   "ward_id" 
    #   t.string    "nibrs"
    # end

  end
end
