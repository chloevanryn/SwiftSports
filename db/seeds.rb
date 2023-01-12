# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'open-uri'
Message.destroy_all
ParticipatingUser.destroy_all
Post.destroy_all
Rating.destroy_all
UserGroup.destroy_all
UserSport.destroy_all

puts "Creating Users..."

user1 = User.new({ email: 'chloe@chloe.com', password: 'password', username: "chloevanryn"})
photo1 = Cloudinary::Uploader.upload("app/assets/images/users/user1.png")
user1.photo.attach(io: URI.open(photo1["url"]), filename: "user1.png", content_type: "image/png")
user1.save

user2 = User.new({ email: 'alan@alan.com', password: 'password', username: "alanglazer"})
photo2 = Cloudinary::Uploader.upload("app/assets/images/users/user2.png")
user2.photo.attach(io: URI.open(photo2["url"]), filename: "user2.png", content_type: "image/png")
user2.save

user3 = User.new({ email: 'arthur@arthur.com', password: 'password', username: "arthurshendrik"})
photo3 = Cloudinary::Uploader.upload("app/assets/images/users/user3.png")
user3.photo.attach(io: URI.open(photo3["url"]), filename: "user3.png", content_type: "image/png")
user3.save

user4 = User.new({ email: 'olena@olena.com', password: 'password', username: "olenarafie"})
photo4 = Cloudinary::Uploader.upload("app/assets/images/users/user4.png")
user4.photo.attach(io: URI.open(photo4["url"]), filename: "user4.png", content_type: "image/png")
user4.save

user5 = User.new({ email: 'andre@andre.com', password: 'password', username: "andremenezes"})
photo5 = Cloudinary::Uploader.upload("app/assets/images/users/user5.png")
user5.photo.attach(io: URI.open(photo5["url"]), filename: "user5.png", content_type: "image/png")
user5.save

user6 = User.new({ email: 'carla@carla.com', password: 'password', username: "carlavaldivia"})
photo6 = Cloudinary::Uploader.upload("app/assets/images/users/user6.png")
user6.photo.attach(io: URI.open(photo6["url"]), filename: "user6.png", content_type: "image/png")
user6.save

user7 = User.new({ email: 'luca@luca.com', password: 'password', username: "lucasevero"})
photo7 = Cloudinary::Uploader.upload("app/assets/images/users/user7.png")
user7.photo.attach(io: URI.open(photo7["url"]), filename: "user7.png", content_type: "image/png")
user7.save

user8 = User.new({ email: 'julia@julia.com', password: 'password', username: "juliaguerreiro"})
photo8 = Cloudinary::Uploader.upload("app/assets/images/users/user8.png")
user8.photo.attach(io: URI.open(photo8["url"]), filename: "user8.png", content_type: "image/png")
user8.save

user9 = User.new({ email: 'florine@florine.com', password: 'password', username: "florinehumbert"})
photo9 = Cloudinary::Uploader.upload("app/assets/images/users/user9.png")
user9.photo.attach(io: URI.open(photo9["url"]), filename: "user9.png", content_type: "image/png")
user9.save

user10 = User.new({ email: 'marta@marta.com', password: 'password', username: "martabas"})
photo10 = Cloudinary::Uploader.upload("app/assets/images/users/user10.png")
user10.photo.attach(io: URI.open(photo10["url"]), filename: "user10.png", content_type: "image/png")
user10.save
user10.save

user11 = User.new({ email: 'ivan@ivan.com', password: 'password', username: "ivangolub"})
photo11 = Cloudinary::Uploader.upload("app/assets/images/users/user11.png")
user11.photo.attach(io: URI.open(photo11["url"]), filename: "user11.png", content_type: "image/png")
user11.save

user12 = User.new({ email: 'nayeem@nayeem.com', password: 'password', username: "nayeemiftrkhar"})
photo12 = Cloudinary::Uploader.upload("app/assets/images/users/user12.png")
user12.photo.attach(io: URI.open(photo12["url"]), filename: "user12.png", content_type: "image/png")
user12.save

user13 = User.new({ email: 'aurelie@aurelie.com', password: 'password', username: "aurelierousseau"})
photo13 = Cloudinary::Uploader.upload("app/assets/images/users/user13.png")
user13.photo.attach(io: URI.open(photo13["url"]), filename: "user13.png", content_type: "image/png")
user13.save

user14 = User.new({ email: 'gabriella@gabriella.com', password: 'password', username: "gabriellavargas"})
photo14 = Cloudinary::Uploader.upload("app/assets/images/users/user14.png")
user14.photo.attach(io: URI.open(photo14["url"]), filename: "user14.png", content_type: "image/png")
user14.save

user15 = User.new({ email: 'paulinea@pauline.com', password: 'password', username: "paulineflorens"})
photo15 = Cloudinary::Uploader.upload("app/assets/images/users/user15.png")
user15.photo.attach(io: URI.open(photo15["url"]), filename: "user15.png", content_type: "image/png")
user15.save

user16 = User.new({ email: 'tatchi@tatchi.com', password: 'password', username: "tatchiwiggers"})
photo16 = Cloudinary::Uploader.upload("app/assets/images/users/user16.png")
user16.photo.attach(io: URI.open(photo16["url"]), filename: "user16.png", content_type: "image/png")
user16.save

user17 = User.new({ email: 'yuhri@yuhri.com', password: 'password', username: "yuhriparada"})
photo17 = Cloudinary::Uploader.upload("app/assets/images/users/user17.png")
user17.photo.attach(io: URI.open(photo17["url"]), filename: "user17.png", content_type: "image/png")
user17.save

user18 = User.new({ email: 'james@james.com', password: 'password', username: "jamesrodrigo"})
photo18 = Cloudinary::Uploader.upload("app/assets/images/users/user18.png")
user18.photo.attach(io: URI.open(photo18["url"]), filename: "user18.png", content_type: "image/png")
user18.save

user19 = User.new({ email: 'jaime@jaime.com', password: 'password', username: "jaimemuchos"})
photo19 = Cloudinary::Uploader.upload("app/assets/images/users/user19.png")
user19.photo.attach(io: URI.open(photo19["url"]), filename: "user19.png", content_type: "image/png")
user19.save

user20 = User.new({ email: 'pierre@pierre.com', password: 'password', username: "pierreabeille"})
photo20 = Cloudinary::Uploader.upload("app/assets/images/users/user20.png")
user20.photo.attach(io: URI.open(photo20["url"]), filename: "user20.png", content_type: "image/png")
user20.save

user21 = User.new({ email: 'adam@adam.com', password: 'password', username: "adamfisher"})
photo21 = Cloudinary::Uploader.upload("app/assets/images/users/user21.png")
user21.photo.attach(io: URI.open(photo21["url"]), filename: "user21.png", content_type: "image/png")
user21.save

user22 = User.new({ email: 'eva@eva.com', password: 'password', username: "evagoreva"})
photo22 = Cloudinary::Uploader.upload("app/assets/images/users/user22.png")
user22.photo.attach(io: URI.open(photo22["url"]), filename: "user22.png", content_type: "image/png")
user22.save

user23 = User.new({ email: 'nikolas@nikolas.com', password: 'password', username: "nikolasvatra"})
photo23 = Cloudinary::Uploader.upload("app/assets/images/users/user23.png")
user23.photo.attach(io: URI.open(photo23["url"]), filename: "user23.png", content_type: "image/png")
user23.save

user24 = User.new({ email: 'alex@alex.com', password: 'password', username: "alexmozes"})
photo24 = Cloudinary::Uploader.upload("app/assets/images/users/user24.png")
user24.photo.attach(io: URI.open(photo24["url"]), filename: "user24.png", content_type: "image/png")
user24.save

user25 = User.new({ email: 'alfie@alfie.com', password: 'password', username: "alfieferero"})
photo25 = Cloudinary::Uploader.upload("app/assets/images/users/user25.png")
user25.photo.attach(io: URI.open(photo25["url"]), filename: "user25.png", content_type: "image/png")
user25.save

user26 = User.new({ email: 'tom@tom.com', password: 'password', username: "tomtomson"})
photo26 = Cloudinary::Uploader.upload("app/assets/images/users/user26.png")
user26.photo.attach(io: URI.open(photo26["url"]), filename: "user26.png", content_type: "image/png")
user26.save

puts "#{User.count} Users were created!"

Sport.destroy_all

puts "Creating Sports..."

sport1 = Sport.new(name: 'Football')
photo27 = Cloudinary::Uploader.upload("app/assets/images/sports/football.png")
sport1.photo.attach(io: URI.open(photo27["url"]), filename: "football.png", content_type: "image/png")
sport1.save

sport2 = Sport.new(name: 'Basketball')
photo28 = Cloudinary::Uploader.upload("app/assets/images/sports/basketball.png")
sport2.photo.attach(io: URI.open(photo28["url"]), filename: "basketball.png", content_type: "image/png")
sport2.save

sport3 = Sport.new(name: 'Volleyball')
photo29 = Cloudinary::Uploader.upload("app/assets/images/sports/volleyball.png")
sport3.photo.attach(io: URI.open(photo29["url"]), filename: "volleyball.png", content_type: "image/png")
sport3.save

sport4 = Sport.new(name: 'Tennis')
photo30 = Cloudinary::Uploader.upload("app/assets/images/sports/tennis.png")
sport4.photo.attach(io: URI.open(photo30["url"]), filename: "tennis.png", content_type: "image/png")
sport4.save

sport5 = Sport.new(name: 'Padel')
photo31 = Cloudinary::Uploader.upload("app/assets/images/sports/padel.png")
sport5.photo.attach(io: URI.open(photo31["url"]), filename: "padel.png", content_type: "image/png")
sport5.save

sport6 = Sport.new(name: 'Jogging')
photo32 = Cloudinary::Uploader.upload("app/assets/images/sports/jogging.png")
sport6.photo.attach(io: URI.open(photo32["url"]), filename: "jogging.png", content_type: "image/png")
sport6.save

sport7 = Sport.new(name: 'Yoga')
photo33 = Cloudinary::Uploader.upload("app/assets/images/sports/yoga.png")
sport7.photo.attach(io: URI.open(photo33["url"]), filename: "yoga.png", content_type: "image/png")
sport7.save

sport8 = Sport.new(name: 'Rugby')
photo34 = Cloudinary::Uploader.upload("app/assets/images/sports/rugby.png")
sport8.photo.attach(io: URI.open(photo34["url"]), filename: "rugby.png", content_type: "image/png")
sport8.save

sport9 = Sport.new(name: 'Hockey')
photo35 = Cloudinary::Uploader.upload("app/assets/images/sports/hockey.png")
sport9.photo.attach(io: URI.open(photo35["url"]), filename: "hockey.png", content_type: "image/png")
sport9.save

sport10 = Sport.new(name: 'Baseball')
photo36 = Cloudinary::Uploader.upload("app/assets/images/sports/baseball.png")
sport10.photo.attach(io: URI.open(photo36["url"]), filename: "baseball.png", content_type: "image/png")
sport10.save

sport11 = Sport.new(name: 'Water Polo')
photo37 = Cloudinary::Uploader.upload("app/assets/images/sports/waterpolo.png")
sport11.photo.attach(io: URI.open(photo37["url"]), filename: "waterpolo.png", content_type: "image/png")
sport11.save

sport12 = Sport.new(name: 'Cricket')
photo38 = Cloudinary::Uploader.upload("app/assets/images/sports/cricket.png")
sport12.photo.attach(io: URI.open(photo38["url"]), filename: "cricket.png", content_type: "image/png")
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

Chatroom.destroy_all

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
},
{
  title: "Volleyball tournament",
  description: "tournament for amateur, please register only if you are a sincere beginner",
  date: Date.new(2023, 2, 20),
  time: Time.new(2023, 2, 20, 14, 0, 0),
  location: "London",
  user_id: 4,
  sport_id: 3,
  level_id: 1
},
{
  title: "Padel for people",
  description: "easier than tennis but still quite tricky",
  date: Date.new(2023, 3, 24),
  time: Time.new(2023, 3, 24, 12, 0, 0),
  location: "Rio de Janeiro",
  user_id: 5,
  sport_id: 5,
  level_id: 2
},
{
  title: "Jogging for better mood",
  description: "come everyone - will have a party after ;)",
  date: Date.new(2023, 4, 29),
  time: Time.new(2023, 4, 29, 11, 0, 0),
  location: "Rio das Ostras",
  user_id: 6,
  sport_id: 6,
  level_id: 1
},
{
  title: "Yoga - nidra",
  description: "let the best winn!",
  date: Date.new(2023, 1, 15),
  time: Time.new(2023, 1, 15, 17, 0, 0),
  location: "Amsterdam",
  user_id: 10,
  sport_id: 7,
  level_id: 4
},
{
  title: "Time for Hockey",
  description: "not for amateur, definitely",
  date: Date.new(2023, 2, 12),
  time: Time.new(2023, 2, 12, 11, 0, 0),
  location: "Berlin",
  user_id: 11,
  sport_id: 9,
  level_id: 3
},
{
  title: "Water Polo Tournament",
  description: "There are 3 upcoming games for the league this week.",
  date: Date.new(2023, 1, 29),
  time: Time.new(2023, 1, 29, 11, 0, 0),
  location: "Syracuse",
  user_id: 7,
  sport_id: 11,
  level_id: 3
},
{
  title: "Baseball tournament",
  description: "tournament for amateur, please register only if you are a sincere beginner",
  date: Date.new(2023, 2, 20),
  time: Time.new(2023, 2, 20, 14, 0, 0),
  location: "New York",
  user_id: 12,
  sport_id: 10,
  level_id: 1
},
{
  title: "Rugby High Skill",
  description: "It is going to be a pool-stage match, with the top eight sides from each of team pools qualifying for the last 16.",
  date: Date.new(2023, 3, 14),
  time: Time.new(2023, 3, 14, 13, 0, 0),
  location: "Dublin",
  user_id: 8,
  sport_id: 8,
  level_id: 4
},
{
  title: "Cricket",
  description: "for them who know the rulles",
  date: Date.new(2023, 1, 29),
  time: Time.new(2023, 1, 29, 11, 0, 0),
  location: "Rio das Ostras",
  user_id: 9,
  sport_id: 12,
  level_id: 2
}
])
puts "#{Event.count} Events were created!"


# file_group1 = URI.open("https://miro.medium.com/max/615/1*ygF9hVnjw4Rukzg6bUvHSw.jpeg")
# file_group2 = URI.open("https://cdn-japantimes.com/wp-content/uploads/2021/06/np_file_91166.jpeg")
# file_group3 = URI.open("https://bloximages.newyork1.vip.townnews.com/postandcourier.com/content/tncms/assets/v3/editorial/d/74/d743ff8a-e302-11eb-ab3f-1f0d14693723/60ec24f294cb7.hires.jpg")

Group.destroy_all

puts "Creating groups..."

group1 = Group.new({title: "Soccer clash", description: "This group is for players interested in playing soccer on the weekends in the heart of Brazil, Rio de Janeiro", user_id: 1})
photo39 = Cloudinary::Uploader.upload("app/assets/images/groups/group1.png")
group1.photo.attach(io: URI.open(photo39["url"]), filename: "group1.png", content_type: "image/png")
group1.save

group2 = Group.new({title: "Ice hockey for cowards", description: "non-contact ice hockey on thursdays and sundays at 6pm", user_id: 2})
photo40 = Cloudinary::Uploader.upload("app/assets/images/groups/group2.png")
group2.photo.attach(io: URI.open(photo40["url"]), filename: "group2.png", content_type: "image/png")
group2.save

group3 = Group.new({title: "Volleyball wednesdays", description: "for everyone interested breaking some nets on wednesdays", user_id: 3})
photo41 = Cloudinary::Uploader.upload("app/assets/images/groups/group3.png")
group3.photo.attach(io: URI.open(photo41["url"]), filename: "group3.png", content_type: "image/png")
group3.save

group4 = Group.new({title: "Tennis forever", description: "This group is for players interested in playing tennis every day in the heart of France, Paris", user_id: 20})
photo43 = Cloudinary::Uploader.upload("app/assets/images/groups/group4.png")
group4.photo.attach(io: URI.open(photo43["url"]), filename: "group4.png", content_type: "image/png")
group4.save

group5 = Group.new({title: "Padel Club", description: " is a tiny underground club close to the Hamburg Fischmark", user_id: 11})
photo44 = Cloudinary::Uploader.upload("app/assets/images/groups/group5.png")
group5.photo.attach(io: URI.open(photo44["url"]), filename: "group5.png", content_type: "image/png")
group5.save

group6 = Group.new({title: "Basketball saturdays", description: "Our Better selection of basketball courts and facilities offers something for everyone. Get involved in Basketball lessons at a Better leisure centre near you.", user_id: 12})
photo45 = Cloudinary::Uploader.upload("app/assets/images/groups/group6.png")
group6.photo.attach(io: URI.open(photo45["url"]), filename: "group6.png", content_type: "image/png")
group6.save

group7 = Group.new({title: "Jogging group", description: "An active, healthy club for students who like to run, jog, walk, and improve their physical fitness.", user_id: 6})
photo46 = Cloudinary::Uploader.upload("app/assets/images/groups/group7.png")
group7.photo.attach(io: URI.open(photo46["url"]), filename: "group7.png", content_type: "image/png")
group7.save

group8 = Group.new({title: "Yoga on the beach", description: "Our class styles include: Yoga for Every Body, Yoga Rhythms, Yin Yoga, Aqua Yoga in a pool and Slo Mo Flo", user_id: 8})
photo47 = Cloudinary::Uploader.upload("app/assets/images/groups/group8.png")
group8.photo.attach(io: URI.open(photo47["url"]), filename: "group8.png", content_type: "image/png")
group8.save

group9 = Group.new({title: "Rugby for begginers", description: "A guide to the rules of rugby union and every aspect relating to the game", user_id: 5})
photo48 = Cloudinary::Uploader.upload("app/assets/images/groups/group9.png")
group9.photo.attach(io: URI.open(photo48["url"]), filename: "group9.png", content_type: "image/png")
group9.save

group10 = Group.new({title: "Baseball for kids", description: "Tsports, particularly baseball, provide tremendous developmental advantages for youngsters. It’s more than simply hitting a home run and swiping second base. It’s all about progressing as an athlete and as a person.", user_id: 12})
photo49 = Cloudinary::Uploader.upload("app/assets/images/groups/group10.png")
group10.photo.attach(io: URI.open(photo49["url"]), filename: "group10.png", content_type: "image/png")
group10.save

group11 = Group.new({title: "Water Polo Activity", description: "Water polo combines the speed of swimming with the strength of wrestling and strategy of soccer and basketball.", user_id: 7})
photo50 = Cloudinary::Uploader.upload("app/assets/images/groups/group11.png")
group11.photo.attach(io: URI.open(photo50["url"]), filename: "group11.png", content_type: "image/png")
group11.save

group12 = Group.new({title: "Cricket is a game of strategy", description: "From a casual hit on the beach or in the backyard to the intensity and endurance of an international Test match", user_id: 4})
photo51 = Cloudinary::Uploader.upload("app/assets/images/groups/group12.png")
group12.photo.attach(io: URI.open(photo51["url"]), filename: "group12.png", content_type: "image/png")
group12.save

puts "#{Group.count} Groups were created!"
