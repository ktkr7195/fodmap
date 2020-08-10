# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(firstName: 'Takayuki',
             lastName: 'Nakamura',
             email: 'test@gmail.com',
             password: 'password',
             password_confirmation: 'password',
             confirmed_at: Time.now)

10.times do |n|
  firstName = Faker::Name.first_name
  lastName = Faker::Name.last_name
  email = "example-#{n + 1}@railstutorial.org"
  password = 'password'
  User.create!(firstName: firstName,
               lastName: lastName,
               email: email,
               password: password,
               password_confirmation: password,
               confirmed_at: Time.now)
end

# リレーションシップ
users = User.all
user  = users.first
following = users[2..5]
followers = users[3..4]
following.each { |followed| user.follow(followed) }
followers.each { |follower| follower.follow(user) }

users = User.order(:created_at).take(6)
3.times do
  picture = File.open('./app/assets/images/abocado toast.jpeg')
  title = Faker::Food.dish
  content = Faker::Food.description
  users.each { |user| user.recipes.create!(picture: picture, title: title, content: content) }
end
