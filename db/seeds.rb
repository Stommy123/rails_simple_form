# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Form.destroy_all
Product.destroy_all
User.destroy_all

User.create(email: "rom@rom.com", password: "password", password_confirmation: "password")
Product.create(description: "ROM3 Portable Professional Cycle", image: "https://i.imgur.com/jIWfhU0.png")
Product.create(description: "ROM3 Recumbent Pro-Cycle", image: "https://i.imgur.com/gLjN8jg.png")
Product.create(description: "ROM3 Upright Pro-Cycle", image: "https://i.imgur.com/gLjN8jg.png")
