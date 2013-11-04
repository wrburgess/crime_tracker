require 'csv'

def filter_boolean(value)
  value == "Y" ? true : false
end

# CSV.foreach("#{Rails.root}/db/fill/cases.csv", :headers => :first_row) do |row|
#   Case.create!(
#     case_id: row["CASE#"], 
#     case_date: row["DATE"], 
#     block: row["BLOCK"], 
#     code: row["CODE"], 
#     crime_type: row["CRIME_TYPE"], 
#     secondary: row["SECONDARY"], 
#     arrest: filter_boolean(row["ARREST"]), 
#     location: row["LOCATION"], 
#     domestic: filter_boolean(row["DOMESTIC"]), 
#     beat: row["BEAT"], 
#     ward: row["WARD"], 
#     nibrs: row["NIBRS"]
#   )
# end
# puts "Cases imported"