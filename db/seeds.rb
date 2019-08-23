# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
class Seed

  def self.begin
    Animal.destroy_all
    seed = Seed.new
    seed.generate_animals
    seed.generate_users
  end

  def generate_users
    user = User.create!(
      email: "a@adopt.org",
      name: "mike",
      password_digest: "123456"
    )
    puts "Default User Created: email: #{user.email}, Name: #{user.name}, Password: #{user.password_digest}"
  end
  def generate_animals
    20.times do |i|
      # shelter =
      animal = Animal.create!(
        shelter: Faker::Address.community + " Shelter",
        name: Faker::Name.first_name ,
        species: Faker::Creature::Animal.name
      )
      puts "Located at #{animal.shelter}. #{animal.species} named #{animal.name}"
    end
  end
end

Seed.begin
