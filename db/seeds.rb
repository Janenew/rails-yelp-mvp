require 'faker'

Restaurant.destroy_all
require 'faker'
puts "creating 5 restaurants"

restaurants_attributes = []
5.times do
  restaurants_attributes <<
  {
    name: Faker::App.name,
    address: "#{Faker::Address.street_address},
     #{Faker::Address.zip}, #{Faker::Address.city}",
    phone: Faker::PhoneNumber.phone_number,
    category: Restaurant::CATEGORIES.sample
  }
end
Restaurant.create!(restaurants_attributes)
p Restaurant.all
puts "end of creation of 5 restaurants"
