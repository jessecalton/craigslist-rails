# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
categories = []
categories << 10.times {Category.create(name: Faker::GameOfThrones.city, description: Faker::GameOfThrones.character)}

categories.each do |category|
  Post.create(category_id: category.id, title: Faker::RuPaul.quote, body: Faker::HarryPotter.quote, author: Faker::HeyArnold.character)
end
