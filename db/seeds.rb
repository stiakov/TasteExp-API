require_relative './assets/content'
require 'faker'
include Content

Sarah = User.create!(name: 'Sarah Weiss', email: 's@s.net', password: '123456x', password_confirmation: '123456x')

6.times do
  User.create!(name: Faker::Name.name, email: Faker::Internet.email, password: '123123q', password_confirmation: '123123q')
end

get_countries.each do |country|
  Country.create!(name: country[:name], region: country[:region])
end

get_categories.each do |type|
  Category.create!(name: type)
end

country = Country.find_by(id: 42)
type = Category.all.sample

establishment = Commerce.create!(
    user: Sarah,
    name: 'Bistro Pub',
    description: Faker::Company.bs,
    country: country,
    state: 'Fake State',
    city: Faker::Nation.capital_city,
    address: Faker::Address.full_address,
    landline: Faker::PhoneNumber.phone_number_with_country_code,
    mobile: Faker::PhoneNumber.cell_phone_with_country_code,
    email: Faker::Internet.email,
    website: Faker::Internet.domain_name,
    instagram: Faker::Internet.username,
    category: type
)
Photo.create!(imageable: establishment, image_data: getImages(-1))

23.times do |i|
  user = User.all.sample
  country = Country.all.sample
  comm_cat = Category.all.sample
  commerce = user.commerces.create!(
      name: Faker::Company.name,
      description: Faker::Company.catch_phrase,
      country: country,
      state: 'Fake State',
      city: Faker::Nation.capital_city,
      address: Faker::Address.full_address,
      landline: Faker::PhoneNumber.phone_number_with_country_code,
      mobile: Faker::PhoneNumber.cell_phone_with_country_code,
      email: Faker::Internet.email,
      website: Faker::Internet.domain_name,
      instagram: Faker::Internet.username,
      category: comm_cat,
  )
    Photo.create!(imageable: commerce, image_data: getImages(i))
end

2.times do
  Photo.create!(imageable: Sarah, image_data: Faker::String.random(length: 7))
end

Reservation.create!(user: Sarah, commerce: establishment, seat: 2, date_time: Time.now.to_i)

Favorite.create(user: Sarah, commerce: establishment)