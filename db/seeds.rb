# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all

users = User.create([
	{
		name: 'Jamie Evangelista',
		email: 'jamie@ga.co',
		username: '@jamie_eula',
		password: "1234",
		gender: 'female',
		city: 'San Francisco'
	},
	{
		name: 'Beau Monroe',
		email: 'beau@ga.co',
		username: '@beau_monroe',
		password: "1234",
		gender: 'male',
		city: 'San Francisco'
	},

])