CSV.foreach("#{Rails.root}/db/fill/cases.csv", :headers => :first_row) do |row|
  Case.create!(
    case_id: row["CASE#"], 
    case_date: row["DATE"], 
    block: row["BLOCK"], 
    code: row["CODE"], 
    crime_type: row["CRIME_TYPE"], 
    secondary: row["SECONDARY"], 
    arrest: row["ARREST"], 
    location: row["LOCATION"], 
    domestic: row["DOMESTIC"], 
    beat: row["BEAT"], 
    ward: row["WARD"], 
    nibrs: row["NIBRS"]
  )
end
puts "Cases imported"