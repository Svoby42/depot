# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Product.create!(title: 'Název',
                description: %(<p>Lorem ipsum dolor sit amet</p>),
                image_url: 'obrazek.jpg',
                price: 20)

99.times do |n|
  Product.create!(title: Faker::Commerce.product_name,
                  description: Faker::Lorem.sentence(word_count: 200),
                  image_url: "#{n}_picture.jpg",
                  price: Faker::Number.within(range: 1..100))
end