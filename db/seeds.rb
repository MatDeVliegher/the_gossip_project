# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

City.destroy_all
10.times do
  city = City.create(name: Faker::Address.city, zip_code: Faker::Address.zip_code)
end

User.destroy_all
10.times do
  user = User.create(
      first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name,
      description: Faker::ChuckNorris.fact,
      email: Faker::Internet.email,
      age: rand(13..100),
      city_id: City.all.sample.id
  )
end

Tag.destroy_all
10.times do
  tag = Tag.create(
      title: Faker::Hipster.word
  )
end

potins = []
Potin.destroy_all
20.times do
  potin = Potin.create(
      title: Faker::Space.meteorite,
      content: Faker::Hipster.paragraph,
      user_id: User.all.sample.id
  )
  potins << potin
end

Tagger.destroy_all
20.times do |n|
  tagger = Tagger.create(
     potin_id: potins[n].id,
     tag_id: Tag.all.sample.id
  )
end

PrivateMessage.destroy_all
20.times do
  message = PrivateMessage.create(
      recipient_id: User.all.sample.id,
      sender_id: User.all.sample.id,
      content: Faker::Hipster.paragraph
  )
end