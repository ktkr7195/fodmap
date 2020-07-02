FactoryBot.define do
  factory :user do
    firstName {"Takayuki"}
    lastName {"Nakamura"}
    sequence(:email) { |n| "hiro#{n}@example.com"}
    password {"password"}
    confirmed_at { Date.today }
  end
end
