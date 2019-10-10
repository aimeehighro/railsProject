# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Measurement.destroy_all
Person.destroy_all
Ingredient.destroy_all
Dish.destroy_all

54.times do
  dish = Dish.create(
    name: Faker::Food.unique.dish,
    description: Faker::Food.description
  )

  rand(1..10).times do
    dish.people.build(name: Faker::Name.unique.name).save
  end
end

200.times do
  Ingredient.create(name: Faker::Food.ingredient)
end

54.times do
  d = Dish.all.sample
  i = Ingredient.all.sample
  Measurement.create(amount: Faker::Food.measurement,
                     dish: d,
                     ingredient: i)
end

puts "Generated #{Dish.count} dishes"
puts "Generated #{Person.count} people"
puts "Generated #{Ingredient.count} ingredients"
puts "Generated #{Measurement.count} measurements"
