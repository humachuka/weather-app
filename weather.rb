require 'yahoo_weatherman'

puts "Give me your location"

location = gets	

client = Weatherman::Client.new
response = client.lookup_by_location(location).condition

weather_location = weather_location(location)

climate = response["text"]
temp = response["temp"] + 32



