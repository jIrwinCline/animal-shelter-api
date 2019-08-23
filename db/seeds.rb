# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
class Seed

  def self.begin
    seed = Seed.new
    seed.generate_animals
  end

  def generate_animals
    20.times do |i|
      # shelter =
      animal = Animal.create!(
        shelter: Faker::Address.community + " Shelter",
        name: Faker::Name.first_name ,
        species: Faker::Creature::Animal.name
      )
      puts "Quote #{i}: Author is #{animal.author} and quotation is '#{animal.content}'."
    end
  end
end

Seed.begin
