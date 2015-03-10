
100.times do
  Fashion.create(:dress => Faker::Hacker.say_something_smart,
                :skirt => Faker::Hacker.abbreviation,
                :blouse => Faker::Hacker.blouse,
                :shirt => Faker::Hacker.adjective,
                :shoes => Faker::Hacker.noun,
                :hacker => Faker::Hacker.say_something_smart,
                :hacker2 => Faker::Hacker.verb)
end