require 'faker'

20.times do
  User.create(full_name: Faker::Name.name,
              username: Faker::Internet.user_name,
              email: Faker::Internet.safe_email)
end

10.times do
  Pet.create(name: Faker::Cat.name,
             species: Faker::Pokemon.name,
             color: Faker::Color.color_name,
             age: Faker::Number.between(1, 20),
             adopted: [true, false].sample )
end
