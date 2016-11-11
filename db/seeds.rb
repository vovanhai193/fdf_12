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
  name: "Cơm Tấm",
  description: "Cơm tấm",
  status: 1,
  cover_image: "image",
  avatar: File.open(Rails.root + "public/images/quancomtam.jpg"),
  averate_rating: 5.0,
  owner_id: 1
)
#shop request

Shop.create!(
  name: "Sinh Tố",
  description: "Sinh tố",
  status: 0,
  cover_image: "image",
  avatar: File.open(Rails.root + "public/images/quansinhto.jpg"),
  owner_id: 2
)

Shop.create!(
  name: "Chè Thái",
  description: "Chè thái",
  status: 0,
  cover_image: "image",
  avatar: File.open(Rails.root + "public/images/quanchethai.jpg"),
  owner_id: 3
)



Shop.create!(
  name: "Dừa Bến Tre",
  description: "Dừa Bến Tre",
  status: 0,
  cover_image: "image",
  avatar: File.open(Rails.root + "public/images/quandua.jpg"),
  owner_id: 4
)

Shop.create!(
  name: "Mì Quảng",
  description: "Mì Quảng",
  status: 0,
  cover_image: "image",
  avatar: File.open(Rails.root + "public/images/quanmiquang.jpg"),
  owner_id: 4
)

#shop_manangers

ShopManager.create!(
  user_id: 2,
  shop_id: 1,
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
  name: "Cơm"
)

Category.create!(
  name: "Chè"
)

Category.create!(
  name: "Sinh Tố"
)

Category.create!(
  name: "Mì Quảng"
)

Category.create!(
  name: "Dừa"
)

Product.create!(
  category_id: 1,
  status: 0,
  shop_id: 1,
  user_id: 1,
  name: "Cơm Sườn",
  price: 22000,
  description: "Cơm Sườn",
  start_hour: "08:00:00",
  end_hour: "20:00:00",
  image: File.open(Rails.root + "public/images/comsuon.jpg")
)

Product.create!(
  category_id: 1,
  status: 0,
  shop_id: 1,
  user_id: 1,
  name: "Cơm Xíu Mại",
  price: 22000,
  description: "Cơm Xíu Mại",
  start_hour: "08:00:00",
  end_hour: "20:00:00",
  image: File.open(Rails.root + "public/images/comxiumai.jpg")
)

Product.create!(
  category_id: 1,
  status: 0,
  shop_id: 1,
  user_id: 1,
  name: "Cơm Gà Kho",
  price: 22000,
  description: "Cơm Gà Kho",
  start_hour: "08:00:00",
  end_hour: "20:00:00",
  image: File.open(Rails.root + "public/images/comgakho.jpg")
)

Product.create!(
  category_id: 1,
  status: 0,
  shop_id: 1,
  user_id: 1,
  name: "Cơm Thịt Kho Trứng",
  price: 22000,
  description: "Cơm Thịt Kho Trứng",
  start_hour: "08:00:00",
  end_hour: "20:00:00",
  image: File.open(Rails.root + "public/images/comthitkhotrung.jpg")
)

Product.create!(
  category_id: 1,
  status: 0,
  shop_id: 1,
  user_id: 1,
  name: "Cơm Thịt Kho Tôm",
  price: 22000,
  description: "Cơm Thịt Kho Tôm",
  start_hour: "08:00:00",
  end_hour: "20:00:00",
  image: File.open(Rails.root + "public/images/comthitkhotom.jpg")
)

Product.create!(
  category_id: 1,
  status: 0,
  shop_id: 1,
  user_id: 1,
  name: "Cơm Cá Sốt Cà",
  price: 22000,
  description: "Cơm Cá Sốt Cà",
  start_hour: "08:00:00",
  end_hour: "20:00:00",
  image: File.open(Rails.root + "public/images/comcasotca.jpg")
)

Product.create!(
  category_id: 1,
  status: 0,
  shop_id: 1,
  user_id: 1,
  name: "Cơm Sườn Non",
  price: 24000,
  description: "Cơm Sườn Non",
  start_hour: "08:00:00",
  end_hour: "20:00:00",
  image: File.open(Rails.root + "public/images/comsuonnon.jpg")
)

Product.create!(
  category_id: 1,
  status: 0,
  shop_id: 1,
  user_id: 1,
  name: "Cơm Gà Đùi",
  price: 24000,
  description: "Cơm Gà Đùi",
  start_hour: "08:00:00",
  end_hour: "20:00:00",
  image: File.open(Rails.root + "public/images/comgadui.jpg")
)

Product.create!(
  category_id: 1,
  status: 0,
  shop_id: 1,
  user_id: 1,
  name: "Cơm Đậu Nhồi Thịt",
  price: 20000,
  description: "Cơm Đậu Nhồi Thịt",
  start_hour: "08:00:00",
  end_hour: "20:00:00",
  image: File.open(Rails.root + "public/images/comdaunhoithit.jpg")
)

Product.create!(
  category_id: 1,
  status: 0,
  shop_id: 1,
  user_id: 1,
  name: "Cơm Mực Nhồi Thịt",
  price: 24000,
  description: "Cơm Mực Nhồi Thịt",
  start_hour: "08:00:00",
  end_hour: "20:00:00",
  image: File.open(Rails.root + "public/images/commucnhoithit.jpg")
)

Product.create!(
  category_id: 1,
  status: 0,
  shop_id: 1,
  user_id: 1,
  name: "Cơm Chim Cút Roty",
  price: 24000,
  description: "Cơm Chim Cút Roty",
  start_hour: "08:00:00",
  end_hour: "20:00:00",
  image: File.open(Rails.root + "public/images/comchimcutroty.jpg")
)

Product.create!(
  category_id: 1,
  status: 0,
  shop_id: 1,
  user_id: 1,
  name: "Cơm Thịt Heo Chiên",
  price: 22000,
  description: "Cơm Thịt Heo Chiên",
  start_hour: "08:00:00",
  end_hour: "20:00:00",
  image: File.open(Rails.root + "public/images/comthitheochien.jpg")
)

Product.create!(
  category_id: 1,
  status: 0,
  shop_id: 1,
  user_id: 1,
  name: "Canh Khổ Qua",
  price: 5000,
  description: "Canh Khổ Qua",
  start_hour: "08:00:00",
  end_hour: "20:00:00",
  image: File.open(Rails.root + "public/images/canhkhoqua.jpg")
)

Product.create!(
  category_id: 2,
  status: 0,
  shop_id: 3,
  user_id: 3,
  name: "Chè thái có sầu riêng",
  price: 20000,
  description: "Chè thái có sầu riêng",
  start_hour: "08:00:00",
  end_hour: "20:00:00",
  image: File.open(Rails.root + "public/images/chethaicosaurieng.jpg")
)

Product.create!(
  category_id: 2,
  status: 0,
  shop_id: 3,
  user_id: 3,
  name: "Chè thái không sầu riêng",
  price: 16000,
  description: "Chè thái không sầu riêng",
  start_hour: "08:00:00",
  end_hour: "20:00:00",
  image: File.open(Rails.root + "public/images/chethaikhongsaurieng.jpg")
)

Product.create!(
  category_id: 2,
  status: 0,
  shop_id: 3,
  user_id: 3,
  name: "Đậu hũ sầu riêng",
  price: 18000,
  description: "Đậu hũ sầu riêng",
  start_hour: "08:00:00",
  end_hour: "20:00:00",
  image: File.open(Rails.root + "public/images/dauhusaurieng.jpg")
)

Product.create!(
  category_id: 2,
  status: 0,
  shop_id: 3,
  user_id: 3,
  name: "Đậu hũ sữa dừa",
  price: 14000,
  description: "Đậu hũ sữa dừa",
  start_hour: "08:00:00",
  end_hour: "20:00:00",
  image: File.open(Rails.root + "public/images/dauhusuadua.jpg")
)

Product.create!(
  category_id: 2,
  status: 0,
  shop_id: 3,
  user_id: 3,
  name: "Đậu hũ socola",
  price: 14000,
  description: "Đậu hũ socola",
  start_hour: "08:00:00",
  end_hour: "20:00:00",
  image: File.open(Rails.root + "public/images/dauhusocola.jpg")
)

Product.create!(
  category_id: 2,
  status: 0,
  shop_id: 3,
  user_id: 3,
  name: "Đậu hũ dâu",
  price: 14000,
  description: "Đậu hũ dâu",
  start_hour: "08:00:00",
  end_hour: "20:00:00",
  image: File.open(Rails.root + "public/images/dauhudau.jpg")
)

Product.create!(
  category_id: 2,
  status: 0,
  shop_id: 3,
  user_id: 3,
  name: "Đậu hũ đậu nành",
  price: 14000,
  description: "Đậu hũ đậu nành",
  start_hour: "08:00:00",
  end_hour: "20:00:00",
  image: File.open(Rails.root + "public/images/dauhudaunanh.jpg")
)

Product.create!(
  category_id: 2,
  status: 0,
  shop_id: 3,
  user_id: 3,
  name: "Flan",
  price: 10000,
  description: "Flan",
  start_hour: "08:00:00",
  end_hour: "20:00:00",
  image: File.open(Rails.root + "public/images/flan.jpg")
)

Product.create!(
  category_id: 2,
  status: 0,
  shop_id: 3,
  user_id: 3,
  name: "Flan sầu riêng",
  price: 14000,
  description: "Flan sầu riêng",
  start_hour: "08:00:00",
  end_hour: "20:00:00",
  image: File.open(Rails.root + "public/images/flansaurieng.jpg")
)

Product.create!(
  category_id: 2,
  status: 0,
  shop_id: 3,
  user_id: 3,
  name: "Flan kem tươi",
  price: 12000,
  description: "Flan kem tươi",
  start_hour: "08:00:00",
  end_hour: "20:00:00",
  image: File.open(Rails.root + "public/images/flankemtuoi.jpg")
)

Product.create!(
  category_id: 2,
  status: 0,
  shop_id: 3,
  user_id: 3,
  name: "Flan dâu",
  price: 10000,
  description: "Flan dâu",
  start_hour: "08:00:00",
  end_hour: "20:00:00",
  image: File.open(Rails.root + "public/images/flandau.jpg")
)

Product.create!(
  category_id: 2,
  status: 0,
  shop_id: 3,
  user_id: 3,
  name: "Flan dừa",
  price: 10000,
  description: "Flan dừa",
  start_hour: "08:00:00",
  end_hour: "20:00:00",
  image: File.open(Rails.root + "public/images/flandua.jpg")
)

Product.create!(
  category_id: 2,
  status: 0,
  shop_id: 3,
  user_id: 3,
  name: "Yaourt nếp cẩm",
  price: 18000,
  description: "Yaourt nếp cẩm",
  start_hour: "08:00:00",
  end_hour: "20:00:00",
  image: File.open(Rails.root + "public/images/yaourtnepcam.jpg")
)

Product.create!(
  category_id: 2,
  status: 0,
  shop_id: 3,
  user_id: 3,
  name: "Chè đậu xanh đánh",
  price: 16000,
  description: "Chè đậu xanh đánh",
  start_hour: "08:00:00",
  end_hour: "20:00:00",
  image: File.open(Rails.root + "public/images/chedauxanhdanh.jpg")
)

Product.create!(
  category_id: 2,
  status: 0,
  shop_id: 3,
  user_id: 3,
  name: "Chè khúc bạch",
  price: 16000,
  description: "Chè khúc bạch",
  start_hour: "08:00:00",
  end_hour: "20:00:00",
  image: File.open(Rails.root + "public/images/chekhucbach.jpg")
)

Product.create!(
  category_id: 3,
  status: 0,
  shop_id: 2,
  user_id: 2,
  name: "sinh tố",
  price: 15000,
  description: "SCinh tố",
  start_hour: "08:00:00",
  end_hour: "20:00:00",
  image: File.open(Rails.root + "public/images/sinhto.jpg")
)

Product.create!(
  category_id: 3,
  status: 0,
  shop_id: 2,
  user_id: 2,
  name: "Chè xoa xoa",
  price: 12000,
  description: "Chè xoa xoa",
  start_hour: "08:00:00",
  end_hour: "20:00:00",
  image: File.open(Rails.root + "public/images/chexoaxoa.jpg")
)

Product.create!(
  category_id: 3,
  status: 0,
  shop_id: 2,
  user_id: 2,
  name: "chè đậu xanh",
  price: 10000,
  description: "chè đậu xanh",
  start_hour: "08:00:00",
  end_hour: "20:00:00",
  image: File.open(Rails.root + "public/images/chedauxanh.jpg")
)

Product.create!(
  category_id: 3,
  status: 0,
  shop_id: 2,
  user_id: 2,
  name: "sâm bổ lượng",
  price: 15000,
  description: "sâm bổ lượng",
  start_hour: "08:00:00",
  end_hour: "20:00:00",
  image: File.open(Rails.root + "public/images/samboluong.jpg")
)

Product.create!(
  category_id: 3,
  status: 0,
  shop_id: 2,
  user_id: 2,
  name: "chè mít",
  price: 15000,
  description: "chè mít",
  start_hour: "08:00:00",
  end_hour: "20:00:00",
  image: File.open(Rails.root + "public/images/chemit.jpg")
)

Product.create!(
  category_id: 3,
  status: 0,
  shop_id: 2,
  user_id: 2,
  name: "dâu xay sữa chua",
  price: 20000,
  description: "dâu xay sữa chua",
  start_hour: "08:00:00",
  end_hour: "20:00:00",
  image: File.open(Rails.root + "public/images/dauxaysuachua.jpg")
)

Product.create!(
  category_id: 3,
  status: 0,
  shop_id: 2,
  user_id: 2,
  name: "nước chanh",
  price: 10000,
  description: "nước chanh",
  start_hour: "08:00:00",
  end_hour: "20:00:00",
  image: File.open(Rails.root + "public/images/nuocchanh.jpg")
)

Product.create!(
  category_id: 3,
  status: 0,
  shop_id: 2,
  user_id: 2,
  name: "cóc ép",
  price: 12000,
  description: "cóc ép",
  start_hour: "08:00:00",
  end_hour: "20:00:00",
  image: File.open(Rails.root + "public/images/cocep.jpg")
)

Product.create!(
  category_id: 3,
  status: 0,
  shop_id: 2,
  user_id: 2,
  name: "cà rốt ép",
  price: 12000,
  description: "cà rốt ép",
  start_hour: "08:00:00",
  end_hour: "20:00:00",
  image: File.open(Rails.root + "public/images/carotep.jpg")
)

Product.create!(
  category_id: 3,
  status: 0,
  shop_id: 2,
  user_id: 2,
  name: "thơm ép",
  price: 12000,
  description: "thơm ép",
  start_hour: "08:00:00",
  end_hour: "20:00:00",
  image: File.open(Rails.root + "public/images/thomep.jpg")
)

Product.create!(
  category_id: 3,
  status: 0,
  shop_id: 2,
  user_id: 2,
  name: "chè đậu thập cẩm",
  price: 12000,
  description: "chè đậu thập cẩm",
  start_hour: "08:00:00",
  end_hour: "20:00:00",
  image: File.open(Rails.root + "public/images/chedauthapcam.jpg")
)

Product.create!(
  category_id: 3,
  status: 0,
  shop_id: 2,
  user_id: 2,
  name: "chè đậu đỏ",
  price: 12000,
  description: "chè đậu đỏ",
  start_hour: "08:00:00",
  end_hour: "20:00:00",
  image: File.open(Rails.root + "public/images/chedaudo.jpg")
)

Product.create!(
  category_id: 3,
  status: 0,
  shop_id: 2,
  user_id: 2,
  name: "chanh dây",
  price: 10000,
  description: "chanh dây",
  start_hour: "08:00:00",
  end_hour: "20:00:00",
  image: File.open(Rails.root + "public/images/chanhday.jpg")
)

Product.create!(
  category_id: 3,
  status: 0,
  shop_id: 2,
  user_id: 2,
  name: "sinh tố bơ",
  price: 30000,
  description: "sinh tố bơ",
  start_hour: "08:00:00",
  end_hour: "20:00:00",
  image: File.open(Rails.root + "public/images/sinhtobo.jpg")
)

Product.create!(
  category_id: 3,
  status: 0,
  shop_id: 2,
  user_id: 2,
  name: "nước cam",
  price: 20000,
  description: "nước cam",
  start_hour: "08:00:00",
  end_hour: "20:00:00",
  image: File.open(Rails.root + "public/images/nuoccam.jpg")
)

Product.create!(
  category_id: 3,
  status: 0,
  shop_id: 2,
  user_id: 2,
  name: "sinh tố mãng cầu",
  price: 20000,
  description: "sinh tố mãng cầu",
  start_hour: "08:00:00",
  end_hour: "20:00:00",
  image: File.open(Rails.root + "public/images/sinhtomangcau.jpg")
)

Product.create!(
  category_id: 5,
  status: 0,
  shop_id: 4,
  user_id: 4,
  name: "dừa bến tre",
  price: 22000,
  description: "dừa bến tre",
  start_hour: "08:00:00",
  end_hour: "20:00:00",
  image: File.open(Rails.root + "public/images/dua.jpg")
)

Product.create!(
  category_id: 5,
  status: 0,
  shop_id: 4,
  user_id: 4,
  name: "rau câu trái dừa",
  price: 30000,
  description: "rau câu trái dừa",
  start_hour: "08:00:00",
  end_hour: "20:00:00",
  image: File.open(Rails.root + "public/images/raucautraidua.jpg")
)

Product.create!(
  category_id: 5,
  status: 0,
  shop_id: 4,
  user_id: 4,
  name: "rau câu flan trái dừa",
  price: 33000,
  description: "rau câu flan trái dừa",
  start_hour: "08:00:00",
  end_hour: "20:00:00",
  image: File.open(Rails.root + "public/images/raucauflandua.jpg")
)

Product.create!(
  category_id: 5,
  status: 0,
  shop_id: 4,
  user_id: 4,
  name: "yaourt dừa",
  price: 15000,
  description: "yaourt dừa",
  start_hour: "08:00:00",
  end_hour: "20:00:00",
  image: File.open(Rails.root + "public/images/yaourtdua.jpg")
)

Product.create!(
  category_id: 5,
  status: 0,
  shop_id: 4,
  user_id: 4,
  name: "yaourt trái dừa",
  price: 45000,
  description: "yaourt trái dừa",
  start_hour: "08:00:00",
  end_hour: "20:00:00",
  image: File.open(Rails.root + "public/images/yaourttraidua.jpg")
)

Product.create!(
  category_id: 5,
  status: 0,
  shop_id: 4,
  user_id: 4,
  name: "yaourt dừa trái cây",
  price: 20000,
  description: "yaourt dừa trái cây",
  start_hour: "08:00:00",
  end_hour: "20:00:00",
  image: File.open(Rails.root + "public/images/yaourtduatraicay.jpg")
)

Product.create!(
  category_id: 5,
  status: 0,
  shop_id: 4,
  user_id: 4,
  name: "yaourt bơ + sầu riêng",
  price: 25000,
  description: "yaourt bơ + sầu riêng",
  start_hour: "08:00:00",
  end_hour: "20:00:00",
  image: File.open(Rails.root + "public/images/yaourtbosaurieng.jpg")
)

Product.create!(
  category_id: 5,
  status: 0,
  shop_id: 4,
  user_id: 4,
  name: "mít sữa dừa",
  price: 20000,
  description: "mít sữa dừa",
  start_hour: "08:00:00",
  end_hour: "20:00:00",
  image: File.open(Rails.root + "public/images/mitsuadua.jpg")
)

Product.create!(
  category_id: 5,
  status: 0,
  shop_id: 4,
  user_id: 4,
  name: "mít sữa dừa sầu riêng",
  price: 25000,
  description: "mít sữa dừa sầu riêng",
  start_hour: "08:00:00",
  end_hour: "20:00:00",
  image: File.open(Rails.root + "public/images/mitsuaduasaurieng.jpg")
)

Product.create!(
  category_id: 4,
  status: 0,
  shop_id: 5,
  user_id: 4,
  name: "mì quảng ếch",
  price: 30000,
  description: "mì quảng ếch",
  start_hour: "08:00:00",
  end_hour: "20:00:00",
  image: File.open(Rails.root + "public/images/miquangech.jpg")
)

Product.create!(
  category_id: 4,
  status: 0,
  shop_id: 5,
  user_id: 4,
  name: "mì quảng lươn",
  price: 30000,
  description: "mì quảng lươn",
  start_hour: "08:00:00",
  end_hour: "20:00:00",
  image: File.open(Rails.root + "public/images/miquangluon.jpg")
)

Product.create!(
  category_id: 4,
  status: 0,
  shop_id: 5,
  user_id: 4,
  name: "mì quảng sườn",
  price: 25000,
  description: "mì quảng sườn",
  start_hour: "08:00:00",
  end_hour: "20:00:00",
  image: File.open(Rails.root + "public/images/miquangsuon.jpg")
)

Product.create!(
  category_id: 4,
  status: 0,
  shop_id: 5,
  user_id: 4,
  name: "mì quảng bò",
  price: 20000,
  description: "mì quảng bò",
  start_hour: "08:00:00",
  end_hour: "20:00:00",
  image: File.open(Rails.root + "public/images/miquangbo.jpg")
)

Product.create!(
  category_id: 4,
  status: 0,
  shop_id: 5,
  user_id: 4,
  name: "mì quảng gà",
  price: 20000,
  description: "mì quảng gà",
  start_hour: "08:00:00",
  end_hour: "20:00:00",
  image: File.open(Rails.root + "public/images/miquangga.jpg")
)

Product.create!(
  category_id: 4,
  status: 0,
  shop_id: 5,
  user_id: 4,
  name: "mì quảng cá lóc",
  price: 20000,
  description: "mì quảng cá lóc",
  start_hour: "08:00:00",
  end_hour: "20:00:00",
  image: File.open(Rails.root + "public/images/miquangcaloc.jpg")
)
