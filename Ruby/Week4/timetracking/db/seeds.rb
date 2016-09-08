# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Project.create!(name: "Ironhack", description: "Ironhack is a...")
Project.create!(name: "Time tracking app", description: "Timetracking app...")
Project.create!(name: "Recipes", description: "Track my favorite recipes")
Project.create!(name: "Shoes", description: "Designer shoes for your snobby taste")
Project.create!(name: "Beanstalk", description: "Severus Snap had a huge beanstalk which Harry climbed but fell.")
Project.create!(name: "Hammer", description: "Description...")
Project.create!(name: "CornholeChris", description: "Description...")
Project.create!(name: "DirtyDan", description: "Description...")
Project.create!(name: "YahBooBay!", description: "Description...")
ih = Project.create!(name: "Wooo!!", description: "You know what...")
ih.time_entries.create!(hours: 1, minutes:3)
