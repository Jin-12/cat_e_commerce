# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'


User.create(email: "admin.test@yopmail.com", password: "password", password_confirmation: "password")

5.times do
User.create(email: Faker::Internet.email, password: "password", password_confirmation: "password")
end
    
20.times do
  item =  Item.create(title: Faker::Name.middle_name,
          description: Faker::Lorem.paragraph,
          price: rand(1..100),
          image_url: Faker::LoremFlickr.image)
  dl_cat_image = open(Faker::LoremFlickr.image)
  item.cat_image.attach(io: dl_cat_image, filename: 'cat_image.jpg', content_type: "image/jpeg")
end

