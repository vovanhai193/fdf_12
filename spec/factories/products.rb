FactoryGirl.define do
  factory :product do
    name {Faker::Lorem.word}
    description {Faker::Hacker.say_something_smart}
    price {Faker::Number.number(5)}
  end
end
