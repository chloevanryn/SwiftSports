# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'open-uri'

User.destroy_all

puts "Creating Users..."

file_user1 = URI.open("https://cdn.shopify.com/s/files/1/0321/7404/7368/products/S149_384x480.jpg?v=1632929989")
file_user2 = URI.open("https://thumbs.dreamstime.com/b/jesus-christ-27641065.jpg")
file_user3 = URI.open("https://cdn.shopify.com/s/files/1/0321/7404/7368/products/S129_384x509.jpg?v=1632867219")
file_user4 = URI.open("https://miro.medium.com/max/304/0*eGzlW_Mh2HRogGMa.jpeg")

user1 = User.new({ email: 'chloe@chloe.com', password: 'password', username: "chloevanryn"})
user1.photo.attach(io: file_user1, filename: "user1.png", content_type: "image/png")
user1.save

user2 = User.new({ email: 'alan@alan.com', password: 'password', username: "alanglazer"})
user2.photo.attach(io: file_user2, filename: "user2.png", content_type: "image/png")
user2.save

user3 = User.new({ email: 'arthur@arthur.com', password: 'password', username: "arthurshendrik"})
user3.photo.attach(io: file_user3, filename: "user3.png", content_type: "image/png")
user3.save

user4 = User.new({ email: 'olena@olena.com', password: 'password', username: "olenarafie"})
user4.photo.attach(io: file_user4, filename: "user4.png", content_type: "image/png")
user4.save

puts "#{User.count} Users were created!"

Sport.destroy_all

puts "Creating Sports..."

file_sport1 = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/6/6e/Football_%28soccer_ball%29.svg/1927px-Football_%28soccer_ball%29.svg.png")
file_sport2 = URI.open("https://img.freepik.com/vektoren-kostenlos/basketballball-isoliert_1284-42545.jpg?w=2000")
file_sport3 = URI.open("https://static.vecteezy.com/system/resources/previews/005/461/266/original/volleyball-ball-for-playing-volleyball-illustration-isolated-on-white-background-free-vector.jpg")
file_sport4 = URI.open("https://p.turbosquid.com/ts-thumb/Ly/5aqben/iAL7ezgn/01/jpg/1585783790/600x600/fit_q87/542e9d8a1508d33321bdd3840d4259feee55599f/01.jpg")
file_sport5 = URI.open("https://www.tennis-point.de/dw/image/v2/BBDP_PRD/on/demandware.static/-/Sites-master-catalog/default/dw8d0bbf7d/images/148/256/0003600000__11.jpg?q=80&sw=2000")
file_sport6 = URI.open("https://images.pexels.com/photos/3601094/pexels-photo-3601094.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500")
file_sport7 = URI.open("https://images.news18.com/ibnlive/uploads/2022/03/yoga-3-16484555003x2.jpg?impolicy=website&width=510&height=356")
file_sport8 = URI.open("https://p.turbosquid.com/ts-thumb/ja/LOay8R/MohiG1el/1/png/1573384316/600x600/fit_q87/fa0adb7ff40bdfa8e91e7fa4938d2af1631c2062/1.jpg")
file_sport9 = URI.open("https://i.ebayimg.com/images/g/-KUAAOSwQbNigyhW/s-l500.jpg")
file_sport10 = URI.open("https://upload.wikimedia.org/wikipedia/en/1/1e/Baseball_%28crop%29.jpg")
file_sport11 = URI.open("https://m.media-amazon.com/images/I/51cXhQC-uaL._AC_.jpg")
file_sport12 = URI.open("https://media.istockphoto.com/id/181668903/de/vektor/rot-gl%C3%A4nzend-traditionelle-cricket-ball.jpg?s=612x612&w=0&k=20&c=GMkbN8GGimFUhpUUN02YC02i_a22XnV_bchk6wKRirg=")

sport1 = Sport.new(name: 'Football')
sport1.photo.attach(io: file_sport1, filename: "user1.png", content_type: "image/png")
sport1.save

sport2 = Sport.new(name: 'Basketball')
sport2.photo.attach(io: file_sport2, filename: "user2.png", content_type: "image/png")
sport2.save

sport3 = Sport.new(name: 'Volleyball')
sport3.photo.attach(io: file_sport3, filename: "user3.png", content_type: "image/png")
sport3.save

sport4 = Sport.new(name: 'Tennis')
sport4.photo.attach(io: file_sport4, filename: "user4.png", content_type: "image/png")
sport4.save

sport5 = Sport.new(name: 'Padel')
sport5.photo.attach(io: file_sport5, filename: "user5.png", content_type: "image/png")
sport5.save

sport6 = Sport.new(name: 'Jogging')
sport6.photo.attach(io: file_sport6, filename: "user6.png", content_type: "image/png")
sport6.save

sport7 = Sport.new(name: 'Yoga')
sport7.photo.attach(io: file_sport7, filename: "user7.png", content_type: "image/png")
sport7.save

sport8 = Sport.new(name: 'Rugby')
sport8.photo.attach(io: file_sport8, filename: "user8.png", content_type: "image/png")
sport8.save

sport9 = Sport.new(name: 'Hockey')
sport9.photo.attach(io: file_sport9, filename: "user9.png", content_type: "image/png")
sport9.save

sport10 = Sport.new(name: 'Baseball')
sport10.photo.attach(io: file_sport10, filename: "user10.png", content_type: "image/png")
sport10.save

sport11 = Sport.new(name: 'Water polo')
sport11.photo.attach(io: file_sport11, filename: "user11.png", content_type: "image/png")
sport11.save

sport12 = Sport.new(name: 'Cricket')
sport12.photo.attach(io: file_sport12, filename: "user12.png", content_type: "image/png")
sport12.save

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

Event.destroy_all
puts "Creating Events..."
Event.create([{
  title: "Soccer tournament",
  description: "tournament for amateur, please register only if you are a sincere beginner",
  date: Date.new(2023, 1, 20),
  time: Time.new(2023, 1, 20, 14, 0, 0),
  location: "Paris",
  user_id: 1,
  sport_id: 1,
  level_id: 1
},
{
  title: "Ball is life",
  description: "masterclass basketball, noobs unwanted",
  date: Date.new(2023, 1, 24),
  time: Time.new(2023, 1, 24, 18, 0, 0),
  location: "Los Angeles",
  user_id: 2,
  sport_id: 2,
  level_id: 4
},
{
  title: "Tennis 1v1",
  description: "looking for a quick but competitive match",
  date: Date.new(2023, 1, 29),
  time: Time.new(2023, 1, 29, 11, 0, 0),
  location: "Mexico City",
  user_id: 3,
  sport_id: 4,
  level_id: 3
}
])
puts "#{Event.count} Events were created!"


file_group1 = URI.open("https://miro.medium.com/max/615/1*ygF9hVnjw4Rukzg6bUvHSw.jpeg")
file_group2 = URI.open("https://cdn-japantimes.com/wp-content/uploads/2021/06/np_file_91166.jpeg")
file_group3 = URI.open("https://bloximages.newyork1.vip.townnews.com/postandcourier.com/content/tncms/assets/v3/editorial/d/74/d743ff8a-e302-11eb-ab3f-1f0d14693723/60ec24f294cb7.hires.jpg")

Group.destroy_all

puts "Creating groups..."

group1 = Group.new({title: "Soccer clash", description: "This group is for players interested in playing soccer on the weekends in the heart of Brazil, Rio de Janeiro", user_id: 1})
group1.photo.attach(io: file_group1, filename: "group1.png", content_type: "image/png")
group1.save

group2 = Group.new({title: "Ice hockey for cowards", description: "non-contact ice hockey on thursdays and sundays at 6pm", user_id: 2})
group2.photo.attach(io: file_group2, filename: "group2.png", content_type: "image/png")
group2.save

group3 = Group.new({title: "Volleyball wednesdays", description: "for everyone interested breaking some nets on wednesdays", user_id: 3})
group3.photo.attach(io: file_group3, filename: "group3.png", content_type: "image/png")
group3.save

puts "#{Group.count} Groups were created!"
