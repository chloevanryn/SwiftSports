# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.destroy_all

puts "Creating Users..."


User.create!([{
  email: 'chloe@chloe.com', password: 'password', username: "chloevanryn"
},
{
  email: 'alan@alan.com', password: 'password', username: "alanglazer"
},
{
  email: 'arthur@arthur.com', password: 'password', username: "arthurshendrik"
},
{
  email: 'olena@olena.com', password: 'password', username: "olenarafie"
}])
puts "#{User.count} Users were created!"

Sport.destroy_all
puts "Creating Sports..."
Sport.create([{
  name: 'Football'
},
{
  name: 'Basketball'
},
{
  name: 'Volleyball'
},
{
  name: 'Tennis'
},
{
  name: 'Padel'
},
{
  name: 'Jogging'
},
{
  name: 'Yoga'
},
{
  name: 'Rugby'
},
{
  name: 'Hockey'
},
{
  name: 'Baseball'
},
{
  name: 'Water polo'
},
{
  name: 'Cricket'
}])
puts "#{Sport.count} Sports were created!"

Level.destroy_all
puts "Creating Levels..."
Level.create([{
  name: 'Recreational'
},
{
  name: 'Intermediate'
},
{
  name: 'Upper Intermediate'
},
{
  name: 'Competitive'
}])
puts "#{Level.count} Levels were created!"

