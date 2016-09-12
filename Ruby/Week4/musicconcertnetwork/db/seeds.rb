# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
concert1 = Concert.create!(artist: "The Smashing Pumpkins", venue: "Parkland Amphitheatre", city: "Longhorn, VA", date:Time.now, price: 50.50, description: "Come witness the beginning of a new musical era!" )