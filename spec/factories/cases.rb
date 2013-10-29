FactoryGirl.define do
  factory :case do
    case_id "HW4123456"
    case_date { Time.now }
    block "5800 N LINCOLN AVE"
    code "0820"
    crime_type "LARCENY - THEFT"
    secondary "$500 AND UNDER"
    arrest false
    location "APARTMENT"
    domestic false
    beat 2032
    ward 47
    nibrs "05"
  end
end