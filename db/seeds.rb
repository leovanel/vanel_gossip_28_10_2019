# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.all.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('users') #commande pour reset l'id 
Gossip.all.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('gossips') #commande pour reset l'id 

20.times do
	u = User.create(name: Faker::TvShows::Buffy.character,email: Faker::Internet.email,
	description: Faker::ChuckNorris.fact,
	birthdate: (rand(Date.civil(1950, 1, 1)..Date.civil(2005, 12, 31)).to_s))
end

60.times do
	g = Gossip.create(gossip: Faker::TvShows::Buffy.quote,title: Faker::Beer.brand ,
	date: (rand(Date.civil(2019, 1, 1)..Date.civil(2020, 12, 31)).to_s),
	user_id: rand(1..10))
end