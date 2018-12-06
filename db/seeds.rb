# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Concert.destroy_all

request = RestClient.get("https://app.ticketmaster.com/discovery/v2/events.json?classificationName=music&dmaId=345&size=200&apikey=#{ENV['API_KEY']}")
response = JSON.parse(request)

response["_embedded"]["events"].each do |event|
  Concert.find_or_create_by(artist: event["name"], location: event["_embedded"]["venues"][0]["city"]["name"], venue: event["_embedded"]["venues"][0]["name"], genre: event["classifications"][0]["genre"]["name"], date_and_time: event["dates"]["start"]["dateTime"])
end
