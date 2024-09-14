require 'faker'
Restaurant.destroy_all

puts "making 10 restaurants"
10.times do
  restaurant = Restaurant.new(
    name: Faker::Restaurant.name,
    rating: rand(1..10)
  )
  restaurant.save
end
puts "finish!"
