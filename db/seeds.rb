# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# User.find_by_name("Jamie Evangelista").ootds.create({trend: "vintage", caption: "very classy"})

User.destroy_all
Ootd.destroy_all

users = User.create([
	{
		name: 'Jamie Evangelista',
		email: 'jamie@ga.co',
		username: '@jamie_eula',
		password: "1234",
		gender: 'female',
		city: 'San Francisco',
		user_image: '/images/ootds/jam1.png'
	},
	{
		name: 'Beau Monroe',
		email: 'beau@ga.co',
		username: '@beau_monroe',
		password: "1234",
		gender: 'male',
		city: 'San Francisco'
	},
	{
		name: 'John Evangelista',
		email: 'john@ga.co',
		username: '@thejohn_ed',
		password: "1234",
		gender: 'male',
		city: 'Daly City'
	},
	{
		name: 'Rainier Pazcoguin',
		email: 'rainier@ga.co',
		username: '@thedressedchest',
		password: "1234",
		gender: 'male',
		city: 'Daly City',
		user_image: '/images/ootds/chest1.png'
	}, 
	{
		name: 'Christine Pazcoguin',
		email: 'christine@ga.co',
		username: '@christeeney',
		password: "1234",
		gender: 'male',
		city: 'South San Francisco'
	}

])

ootds_jamie = User.find_by_name("Jamie Evangelista").ootds.create([
	{ootd_image: "/images/ootds/jam2.png", trend: "boho", caption: "barcelona style"},
	{ootd_image: "/images/ootds/jam3.png", trend: "mod", caption: "in nature"},
	{ootd_image: "/images/ootds/jam4.png", trend: "mod", caption: "spring pastels"},
	])
