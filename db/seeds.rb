# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(
  name: "User",
  email: "user@gmail.com",
  password: "123456",
  password_confirmation: "123456"
)

Admin.create!(
  email: "admin@gmail.com",
  password: "123456",
  password_confirmation: "123456"

)

User.create!(
  name: "Faker1",
  email: "faker1@gmail.com",
  password: "123456",
  password_confirmation: "123456"
)

User.create!(
  name: "Faker2",
  email: "faker2@gmail.com",
  password: "123456",
  password_confirmation: "123456"
)

User.create!(
  name: "Faker3",
  email: "faker3@gmail.com",
  password: "123456",
  password_confirmation: "123456"
)


Shop.create!(
  name: "High Land",
  description: "Coffe",
  status: 1,
  cover_image: "image",
  averate_rating: 5.0
)
#shop request

Shop.create!(
  name: "KFC",
  description: "Chicken and chickend",
  status: 0,
  cover_image: "image",
  avatar: "image2"
)

Shop.create!(
  name: "Lotteria",
  description: "Hamburger",
  status: 0,
  cover_image: "image",
  avatar: "image2"
)



Shop.create!(
  name: "Sushi",
  description: "sushi",
  status: 0,
  cover_image: "image",
  avatar: "image2"
)

#shop_manangers

ShopManager.create!(
  user_id: 2,
  shop_id: 2,
  role: 1,
)

ShopManager.create!(
  user_id: 3,
  shop_id: 3,
  role: 1,
)

ShopManager.create!(
  user_id: 4,
  shop_id: 4,
  role: 1,
)

Coupon.create!(
  name: "Sale 99%",
  description: "Lucky day",
  coupon_type: 0,
  discount_type: 0,
  value: 99,
  code: "XCODE1",
  start_at: "2016-09-12 08:00:00",
  end_at: "2016-09-14 08:00:00",
  shop_id: 1,
  user_id: 1
)

Category.create!(
  name: "Bread"
)

puts "product ....."

4.times do |n|
  category_id = 1,
  shop_id = 1,
  user_id = 1,
  name = "Bread",
  price = 6000,
  description = "The atmosphere in Chania",
  image = "ui_2.jpg"
  Product.create!(category_id: category_id, shop_id: shop_id, user_id: user_id,
    name: name, price: price, description: description, image: image)
end

4.times do |n|
  category_id = 1,
  shop_id = 1,
  user_id = 1,
  name = "Chicken",
  price = 12000,
  description = "The atmosphere in Chania",
  image = "ui_1.jpg"
  Product.create!(category_id: category_id, shop_id: shop_id, user_id: user_id,
    name: name, price: price, description: description, image: image)
end
