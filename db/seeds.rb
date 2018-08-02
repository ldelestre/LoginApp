User.destroy_all

User.create(email: Faker::Internet.email, password: "motdepasse", password_confirmation: "motdepasse")
User.create(email: Faker::Internet.email, password: "marie21", password_confirmation: "marie21")
User.create(email: Faker::Internet.email, password: "running00", password_confirmation: "running00")