require 'faker'
puts "cleaning database"
Restaurant.destroy_all

puts "creating restaurants"
5.times do
  restaurant = Restaurant.new(
  name: Faker::Restaurant.name,
  address: Faker::Address.street_address,
  phone_number: Faker::PhoneNumber.phone_number,
  category: ["chinese", "italian", "japanese", "french", "belgian"].sample 
  )
  restaurant.save!
  puts "created!"
end