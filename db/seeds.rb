# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
City.destroy_all
City.reset_pk_sequence
User.destroy_all
User.reset_pk_sequence
Gosssip.destroy_all
Gosssip.reset_pk_sequence
Tag.destroy_all
Tag.reset_pk_sequence
GossipTag.destroy_all
GossipTag.reset_pk_sequence
PrivateMessage.destroy_all
PrivateMessage.reset_pk_sequence
Comment.destroy_all
Comment.reset_pk_sequence


require 'faker'


10.times do |index|
  City.create(name: Faker::Address.city,
    zip_code: Faker::Address.zip_code
  )
end

10.times do |index|
  User.create(first_name: Faker::Name.first_name,
    last_name:  Faker::Name.last_name,
    description: Faker::Quote.yoda,
    email: Faker::Internet.free_email,
    age: Faker::Number.between(from: 16, to: 90),
    city_id: Faker::Number.between(from: 1, to: 10)
  )
end

20.times do |index|
  Gosssip.create(title: Faker::Book.title,
    content: Faker::Movies::StarWars.quote,
    user_id:  Faker::Number.between(from: 1, to: 10)
  )
end

10.times do |index|
  Tag.create(title: Faker::Food.fruits
  )
end

20.times do |index|
  GossipTag.create(gosssip_id: Faker::Number.within(range: 1..20),
    tag_id: Faker::Number.between(from: 1, to: 10)
  )
end

10.times do |index|
  x = rand(1..5)
  PrivateMessage.create(content: Faker::Lorem.question,
    sender_id: x,
    recipient_id: x + rand(1..5)
  )
end

20.times do |index|
  Comment.create(content: Faker::Movies::StarWars.wookiee_sentence,
    user_id: Faker::Number.between(from: 1, to: 10),
    gosssip_id: Faker::Number.between(from: 1, to: 20)
  )
end