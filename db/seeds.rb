# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
5.times do
User.create(email: Faker::Internet.email, password: "mypassword", password_confirmation: "mypassword")
end
    
20.times do
Item.create(title: Faker::Name.middle_name ,description: Faker::Lorem.paragraph , price: rand(1..100), image_url: "https://wallimpex.com/data/out/586/funny-cat-pic-9466797.jpg")
end

Cart.create(user_id: 1)
Cart.create(user_id: 2)
Cart.create(user_id: 3)
Cart.create(user_id: 4)
Cart.create(user_id: 5)

10.times do 
JoinTableCartsItems.create(cart_id: Cart.all.sample.id, item_id: Item.all.sample.id)
end 