
# User.find_by_name("Jamie Evangelista").ootds.create({trend: "vintage", caption: "very classy"})
#User.create({name: 'Rainier Pazcoguin', email: 'rainier@ga.co', username: '@thedressedchest', password:'1234', gender: 'male', city: 'Daly City', user_img: File.new("public/images/ootds/chest1.png")})


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
		user_img: File.new("public/images/ootds/facebook.jpg")
	},
	{
		name: 'John Evangelista',
		email: 'john@ga.co',
		username: '@thejohn_ed',
		password: "1234",
		gender: 'male',
		city: 'Daly City',
		user_img: File.new("public/images/ootds/john4.png")
	},
	{
		name: 'Rainier Pazcoguin',
		email: 'rainier@ga.co',
		username: '@thedressedchest',
		password: "1234",
		gender: 'male',
		city: 'Daly City',
		user_img: File.new("public/images/ootds/chest1.png")
	}, 
	{
		name: 'Christine Pazcoguin',
		email: 'christine@ga.co',
		username: '@christeeney',
		password: "1234",
		gender: 'male',
		city: 'South San Francisco',
		user_img: File.new("public/images/ootds/teeney1.png")
	}

])

ootds_jamie = User.find_by_name("Jamie Evangelista").ootds.create([
	{ootd_img: File.new("public/images/ootds/jam1.png"), trend: "modern", caption: "print all over me"},
	{ootd_img: File.new("public/images/ootds/jam2.png"), trend: "boho", caption: "barcelona boho style"},
	{ootd_img: File.new("public/images/ootds/jam3.png"), trend: "mod", caption: "off in nature"},
	{ootd_img: File.new("public/images/ootds/jam4.png"), trend: "mod", caption: "spring pastels"}
	])

ootds_rainier = User.find_by_name("Rainier Pazcoguin").ootds.create([
	{ootd_img: File.new("public/images/ootds/chest1.png"), trend: "dapper", caption: "spot the dot"},
	{ootd_img: File.new("public/images/ootds/chest2.png"), trend: "preppy", caption: "monday blues"},
	{ootd_img: File.new("public/images/ootds/chest3.png"), trend: "dapper", caption: "fair isling it"},
	{ootd_img: File.new("public/images/ootds/chest4.png"), trend: "preppy", caption: "wanna be a shawl collar"}
	])



