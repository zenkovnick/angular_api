require 'rake'

desc "Upload data from JSON to MondoDB"

task :json_to_mongo => :environment do
  JSON.parse(File.read("lib/phones/phones.json")).each do |obj|
    puts "Find or create general phone data"
    phone = Phone.find_or_create_by(phone_id: obj['id']) do |p|
      p.age = obj['age']
      p.phone_id = obj['id']
      p.image_url = obj['imageUrl']
      p.name = obj['name']
      p.snippet = obj['snippet']
    end

    begin
      puts "Update phone specific data for #{phone.name}"
      phone['additional_data'] = File.read("lib/phones/#{phone.phone_id}.json")
      phone.save!

    end if phone

  end
end