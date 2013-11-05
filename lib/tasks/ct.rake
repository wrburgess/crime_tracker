namespace :ct do
  require "nokogiri"
  require "open-uri"
  require "csv"

  desc "Rebuild db with drop, create, migrate, test:prepare (dev only)"
  task rebuild: :environment do
    input = ''
    STDOUT.puts "Drop, recreate, and migrate app database? y[es] or n[o]"
    input = STDIN.gets.chomp
    if input == "y" && Rails.env == 'development'
      Rake::Task["db:drop"].execute
      Rake::Task["db:create"].execute
      Rake::Task["db:migrate"].execute
      Rake::Task["db:test:prepare"].execute
    else
      puts "Aborting rebuild tasks"
    end
  end

  desc "retrieve City of Chicago Data Portal cases"
  task get_chicago_data: :environment do
    
    dataset_id = "ijzp-q8t2"
    begin_date = "2013-10-01T00:00:00"
    end_date = "2013-10-02T00:00:01"
    url = "http://data.cityofchicago.org/resource/#{dataset_id}.json"
    resource = "#{url}?$where=date%20%3E=%20'#{begin_date}'AND%20date%20%3C%20'#{end_date}'"
    binding.pry
    reports = JSON.parse(Nokogiri::HTML(open(resource)))

    if reports.count > 0
      reports.each_with_index do |report, index|
        
        recoding = report["location"] ? report["location"]["needs_recoding"] : nil
        longitude = report["location"] ? report["location"]["longitude"] : nil
        latitude = report["location"] ? report["location"]["latitude"] : nil

        ChicagoCase.create!(  
          case_number: report["case_number"],
          beat: report["beat"],
          location_needs_recoding: recoding,
          location_longitude: longitude,
          location_latitude: latitude,
          x_coordinate: report["x_coordinate"],
          block: report["block"],
          primary_type: report["primary_type"],
          location_description: report["location_description"],
          date: report["date"],
          iucr: report["iucr"],
          domestic: report["domestic"],
          case_id: report["id"],
          ward: report["ward"],
          arrest: report["arrest"],
          description: report["description"],
          y_coordinate: report["y_coordinate"],
          updated_on: report["updated_on"],
          fbi_code: report["fbi_code"],
          longitude: report["longitude"],
          year: report["year"],
          community_area: report["community_area"],
          latitude: report["latitude"],
          district: report["district"]
        )
        puts "Chicago Case imported: #{index}"
      end
    end
  end

  desc "retrieve ClearPath cases"
  task get_clear_data: :environment do
    
    report_date = "10-01-2013"
    reports_count = 1
    page = 1
    limit = 50
    page_start = 0
    url = "http://api1.chicagopolice.org/clearpath/api/1.0/crimes/list"
    resource = "#{url}?dateOccurred=#{report_date}&max=#{limit}&offset="
    resource_paged = "#{resource}#{page_start}"
    reports = JSON.parse(Nokogiri::HTML(open(resource_paged)))
    while reports.count > 0
      reports.each_with_index do |report, index|
        ClearCase.create!(
          beat: report["beat"],
          block: report["block"],
          rdNo: report["rdNo"],
          community_area: report["communityArea"],
          date_occurred: report["dateOccurred"],
          iucr_description: report["iucrDescription"],
          cpd_district: report["cpdDistrict"],
          iucr: report["iucr"],
          last_updated: report["lastUpdated"],
          location_desc: report["locationDesc"],
          primary: report["primary"],
          ward: report["ward"],
          x_coordinate: report["xCoordinate"],
          y_coordinate: report["yCoordinate"]
        )
        puts "Clear Case imported: Page #{page}, Number #{index}"
      end

      page_start += limit 
      resource_paged = "#{resource}#{page_start}"
      reports = JSON.parse(Nokogiri::HTML(open(resource_paged)))
      page += 1
    end
  end

end