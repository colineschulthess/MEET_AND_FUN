# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
p "creating users"
Experience.destroy_all
User.destroy_all
user1 = User.create!(email: 'user@example.com', password: 'user@example.com', sexe: 'homme', age: 20, name: 'dylan')
  p "#{user1.name}"
user2 = User.create!(email: 'test@example.com', password: 'test@example.com', sexe: 'femme', age: 20, name: 'coline')
  p "#{user2.name}"
puts "Creating experiences..."
experience1 = { name: "Sortie Catamaran Dauphins", description: "excursion en catamaran au Trois-Ilets", address: "Trois-Ilets", date: '12/06/2022', capacity: 10, price: 25, host: user1}
experience2 = { name: "soirée carnaval", description: "soirée thème plume ", address: "Case Pilote", date: '12/03/2022', capacity: 100, price: 30, host: user2 }

[experience1, experience2].each do |attributes|
  experience = Experience.create!(attributes)
  puts "Created #{experience.name}"
  end
puts "Finished!"
