# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "open-uri"

puts "Cleaning database..."

Booking.destroy_all
p "bookings detsroyed"
Experience.destroy_all
p "experiences destroyed"
User.destroy_all
p "users destroyed"

p "creating users"
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


experience1 = Experience.create!(name: "Sortie Catamaran Dauphins", description: "excursion en catamaran au Trois-Ilets", address: "Trois-Ilets", date: '12/06/2022', capacity: 10, price: 25.99, host: user1)
  photo1 = URI.open('https://images.unsplash.com/photo-1581272120682-97d9c87e7ccb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDF8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=600&q=60')
  experience1.photo.attach(io: photo1, filename: 'catamaran', content_type: 'image/jpg')

experience2 = Experience.create!(name: "soirée carnaval", description: "soirée thème plume ", address: "Case Pilote", date: '12/03/2022', capacity: 100, price: 30.75, host: user2 )
  photo2 = URI.open('https://images.unsplash.com/photo-1574724713425-fee7e2eacf84?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=826&q=80')
  experience2.photo.attach(io: photo2, filename: 'carnival', content_type: 'image/jpg')

experience3 = Experience.create!(name: "Les ateliers de SISSY", description: "Vision Board ", address: "Ducos", date: '21/03/2022', capacity: 8, price: 25.99, host: user3 )
  photo3 = URI.open('https://images.unsplash.com/photo-1528129550655-5123a0cd0c4e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8dmlzaW9uJTIwYm9hcmR8ZW58MHx8MHx8&auto=format&fit=crop&w=600&q=60')
  experience3.photo.attach(io: photo3, filename: 'atelier', content_type: 'image/jpg')

experience4 = Experience.create!(name: "Chill out", description: "After beach", address: "Le Robert", date: '27/03/2022', capacity: 12, price: 10.50, host: user4 )
  photo4 = URI.open('https://images.unsplash.com/photo-1560359614-870d1a7ea91d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8YmVhY2glMjBwYXJ0eXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=600&q=60')
  experience4.photo.attach(io: photo4, filename: 'soiree', content_type: 'image/jpg')

experience5 = Experience.create!(name: "Concert Esy Kennanga B", description: "Concert muet ", address: "Fort-de-France", date: '22/03/2022', capacity: 2, price: 40.50, host: user5 )
  photo5 = URI.open('http://martiniqueannu.com/img/artiste-martiniquais/e-sy-kennenga.jpg')
  experience5.photo.attach(io: photo5, filename: 'concert', content_type: 'image/jpg')

experience6 = Experience.create!(name: "Fly Board", description: "Volez sur l'eau", address: "Sainte-Luce", date: '19/03/2022', capacity: 4, price: 80.50, host: user6 )
  photo6 = URI.open('https://images.unsplash.com/photo-1505408990643-cb9bbf4bfe2c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8Zmx5Ym9hcmR8ZW58MHx8MHx8&auto=format&fit=crop&w=600&q=60')
  experience6.photo.attach(io: photo6, filename: 'flyboard', content_type: 'image/jpg')

experience7 = Experience.create!(name: "Jet ski", description: "Excursion côte nord ", address: "Le Vauclin", date: '20/03/2022', capacity: 6, price: 270.50, host: user7 )
  photo7 = URI.open('https://images.unsplash.com/photo-1583008585590-c4ed0010bed6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8amV0c2tpfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=600&q=60')
  experience7.photo.attach(io: photo7, filename: 'jetski', content_type: 'image/jpg')

experience8 = Experience.create!(name: "Buggy", description: "Enfourchez votre buggy pour une randonnée d'1h20 pour découvrir les forêts et les champs de canne autour de la ville du Diamant. Pause gourmande avec vue sur le rocher et la mer des Caraïbes, dégustation de rhum et de mets locaux.", address: "Le Diamant", date: '21/03/2022', capacity: 8, price: 100, host: user8 )
  photo8 = URI.open('https://images.unsplash.com/photo-1527929544571-45abc358cd7c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8YnVnZ3klMjBqdW5nbGV8ZW58MHx8MHx8&auto=format&fit=crop&w=600&q=60')
  experience8.photo.attach(io: photo8, filename: 'jetski', content_type: 'image/jpg')

experience9 = Experience.create!(name: "After Work", description: "On friday we all talk in english  ", address: "LAKOU Fort-de-France", date: '18/03/2022', capacity: 50.75, price: 5, host: user9 )
  photo9 = URI.open('https://images.unsplash.com/photo-1485872299829-c673f5194813?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8ZHJpbmtzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=600&q=60')
  experience9.photo.attach(io: photo9, filename: 'afterwork', content_type: 'image/jpg')

experience10 = Experience.create!(name: "Fan de ciné", description: "On regarde et on en discute  ",address: "Palais des congrès MADIANA", date: '20/03/2022', capacity: 6, price: 30.75, host: user10 )
  photo10 = URI.open('https://images.unsplash.com/photo-1604975701397-6365ccbd028a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fGNpbmVtYXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=600&q=60')
  experience10.photo.attach(io: photo10, filename: 'cinema', content_type: 'image/jpg')

  p "#{experience10.name}"
