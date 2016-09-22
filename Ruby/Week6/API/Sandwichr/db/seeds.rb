# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
sandwich1 = Sandwich.create!(name: "The Meneti", bread_type: "Organic Brazilian Banana Bread", total_calories: 0)
sandwich2 = Sandwich.create!(name: "Meat Lovers", bread_type: "Meat Bread", total_calories: 0)

ingredient1 = Ingredient.create!(name: "Black Pepper", calories: "80")
ingredient2 = Ingredient.create!(name: "Ham", calories: "23414")