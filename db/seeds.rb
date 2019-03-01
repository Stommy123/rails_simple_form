Form.destroy_all
Product.destroy_all
User.destroy_all

User.create(email: "tommy@tommy.com ", password: "password", password_confirmation: "password")
Product.create(description: "Cycle1", image: "https://i.imgur.com/jIWfhU0.png")
Product.create(description: "Cycle2", image: "https://i.imgur.com/gLjN8jg.png")
Product.create(description: "Cycle3", image: "https://i.imgur.com/gLjN8jg.png")
