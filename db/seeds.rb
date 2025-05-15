# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "🌱 Seeding database..."

# Clear existing records (optional, helpful during dev)
Favourite.destroy_all
Review.destroy_all
Car.destroy_all
Owner.destroy_all

# Create Owners
owner1 = Owner.create!(nickname: "SpeedySam")
owner2 = Owner.create!(nickname: "CruiserChris")
owner3 = Owner.create!(nickname: "FastFiona")

# Create Cars
Car.create!(
  brand: "Toyota",
  model: "Corolla",
  year: 2020,
  fuel: "petrol",
  owner: owner1
)

Car.create!(
  brand: "Tesla",
  model: "Model 3",
  year: 2022,
  fuel: "electric",
  owner: owner2
)

Car.create!(
  brand: "Volkswagen",
  model: "Golf",
  year: 2018,
  fuel: "diesel",
  owner: owner3
)

puts "✅ Seeding complete!"
