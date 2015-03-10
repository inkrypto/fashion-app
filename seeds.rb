100.times do
  Fashion.create(:dress => Faker::Dress.dress,
                :skirt => Faker::Skirt.skirt,
                :blouse => Faker::Blouse.blouse,
                :shirt => Faker::Shirt.shirt,
                :shoes => Faker::Shoes.shoes,
                :hacker => Faker::Hacker.say_something_smart,
                :hacker2 => Faker::Hacker.verb)
end