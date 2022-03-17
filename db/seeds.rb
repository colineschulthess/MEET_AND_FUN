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
user3 = User.create!(email: 'testuser@example.com', password: 'testuser@example.com', sexe: 'femme', age: 45, name: 'dany')
  p "#{user3.name}"
user4 = User.create!(email: 'useruser@example.com', password: 'useruser@example.com', sexe: 'femme', age: 39, name: 'natacha')
  p "#{user4.name}"
user5 = User.create!(email: 'use@example.com', password: 'use@example.com', sexe: 'homme', age: 40, name: 'fabien')
  p "#{user5.name}"
user6 = User.create!(email: 'usert@example.com', password: 'usert@example.com', sexe: 'homme', age: 25, name: 'franck')
  p "#{user6.name}"
user7 = User.create!(email: 'userexample@example.com', password: 'userexample@example.com', sexe: 'homme', age: 25, name: 'yanis')
  p "#{user7.name}"
user8 = User.create!(email: 'username@example.com', password: 'username@example.com', sexe: 'femme', age: 24, name: 'tess')
  p "#{user8.name}"
user9 = User.create!(email: 'usera@example.com', password: 'usera@example.com', sexe: 'homme', age: 32, name: 'darick')
  p "#{user9.name}"
user10 = User.create!(email: 'userb@example.com', password: 'userb@example.com', sexe: 'femme', age: 37, name: 'amy')
  p "#{user10.name}"

  puts "Creating experiences..."

experience1 = { name: "Sortie Catamaran Dauphins", description: "excursion en catamaran au Trois-Ilets", address: "Trois-Ilets", date: '12/06/2022', capacity: 10, price: 25, host: user1}
experience2 = { name: "soirée carnaval", description: "soirée thème plume ", address: "Case Pilote", date: '12/03/2022', capacity: 100, price: 30, host: user2 }
experience3 = { name: "Les ateliers de SISSY", description: "Vision Board ", address: "Ducos", date: '21/03/2022', capacity: 8, price: 25, host: user3 }
experience4 = { name: "Chill out", description: "After beach", address: "Le Robert", date: '27/03/2022', capacity: 12, price: 10, host: user4 }
experience5 = { name: "ESY KENNENGA B", description: "Concert muet ", address: "Fort-de-France", date: '22/03/2022', capacity: 2, price: 40, host: user5 }
experience6 = { name: "Fly Board", description: "Volez sur l'eau", address: "Sainte-Luce", date: '19/03/2022', capacity: 4, price: 80, host: user6 }
experience7 = { name: "Jet ski", description: "Excursion côte nord ", address: "Le Vauclin", date: '20/03/2022', capacity: 6, price: 270, host: user7 }
experience8 = { name: "Buggy", description: "Randonnée d'1h20 ", address: "Le Diamant", date: '21/03/2022', capacity: 8, price: 100, host: user8 }
experience9 = { name: "After Work", description: "On friday we all talk in english  ", address: "LAKOU Fort-de-France", date: '18/03/2022', capacity: 50, price: 5, host: user9 }
experience = { name: "Fan de ciné", description: "On regarde et on en discute  ", address: "Palais des congrès MADIANA", date: '20/03/2022', capacity: 6, price: 30, host: user10 }

  p "#{experience10.name}"
