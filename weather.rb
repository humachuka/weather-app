require 'yahoo_weatherman'

puts "Give me your location"

location = gets	

client = Weatherman::Client.new
response = client.lookup_by_location(location).condition

climate = response["text"]
temp = response["temp"] + 32
temp = temp.to_s + " degrees"

puts temp, climate


