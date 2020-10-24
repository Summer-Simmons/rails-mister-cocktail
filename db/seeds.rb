# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning cocktail database..."
Cocktail.destroy_all

puts "Creating cocktails..."
Cocktail.create(name: "Mojito")
Cocktail.create(name: "Beer")
Cocktail.create(name: "Pina Colada")
puts "Finished!"

puts "Cleaning ingredients database..."
Ingredient.destroy_all

puts "Creating ingredients..."
Ingredient.create(name: "mint leaves")
Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")

puts "Finished!"

puts "Cleaning doses database..."
Dose.destroy_all

puts "Creating doses..."
Dose.create(description: "put mint leaves", ingredient: "1", cocktail_id: "1" )
Dose.create(description: 'Put mint leaves', ingredient: Ingredient.first, cocktail: CockTail.first)
