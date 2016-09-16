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

Order.create!(
  status: 0,
  end_at: "2016-09-12 08:00:00",
  notes: "Quickly",
  user_id: 1,
  shop_id: 1,
  coupon_id: 1
)

Order.create!(
  status: 1,
  end_at: "2016-09-12 08:00:00",
  notes: "Quickly",
  user_id: 1,
  shop_id: 1,
  coupon_id: 1
)
