# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Product.destroy_all

Product.create(description: "Alpha", image: "https://i.imgur.com/jIWfhU0.png")
Product.create(description: "Beta", image: "https://i.imgur.com/gLjN8jg.png")
Product.create(description: "Gamma", image: "https://i.imgur.com/gLjN8jg.png")
