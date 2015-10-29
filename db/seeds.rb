
# User.find_by_name("Jamie Evangelista").ootds.create({trend: "vintage", caption: "very classy"})
#User.create({name: 'Rainier Pazcoguin', email: 'rainier@ga.co', username: '@thedressedchest', password:'1234', gender: 'male', city: 'Daly City', user_img: File.new("public/images/ootds/chest1.png")})


User.destroy_all
OotdItem.delete_all
Ootd.destroy_all
Ootd.delete_all


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

ootds_rainier = User.find_by_name("John Evangelista").ootds.create([
	{ootd_img: File.new("public/images/ootds/john1.png"), trend: "modern", caption: "cool blues"},
	{ootd_img: File.new("public/images/ootds/john2.png"), trend: "sporty", caption: "Giant thoughts"},
	{ootd_img: File.new("public/images/ootds/john3.png"), trend: "urban", caption: "writing's on the wall"},
	{ootd_img: File.new("public/images/ootds/john4.png"), trend: "preppy", caption: "All-American boy"}
	])

items = Item.create([
	{
		item_category: 'Top',
		name: 'Black Tee',
		purchase_link: 'http://www.modcloth.com/shop/basic-tops/simplicity-on-a-saturday-tunic-in-black',
		item_img: File.new("public/images/items/black_tee.png")
	},
	{
		item_category: 'Bottom',
		name: 'Vinyl Record Skirt',
		purchase_link: 'https://www.etsy.com/listing/208534050/christmas-vinyl-record-players-snowflake?ref=market',
		item_img: File.new("public/images/items/record_skirt.jpg")
	},
	{
		item_category: 'Top',
		name: 'Harris Tweed Jacket',
		purchase_link: 'http://www.asos.com/ASOS/ASOS-Slim-Blazer-In-Harris-Tweed/Prod/pgeproduct.aspx?iid=5514406&cid=14923&sh=0&pge=0&pgesize=36&sort=-1&clr=Brown&totalstyles=30&gridsize=3',
		item_img: File.new("public/images/items/brown_tweed.png")
	},
	{
		item_category: 'Top',
		name: 'Grey Tweed Jacket',
		purchase_link: 'http://www.asos.com/ASOS/ASOS-Slim-Blazer-In-Harris-Tweed/Prod/pgeproduct.aspx?iid=5514406&cid=14923&sh=0&pge=0&pgesize=36&sort=-1&clr=Brown&totalstyles=30&gridsize=3',
		item_img: File.new("public/images/items/gray_tweed.jpg")
	},
	{
		item_category: 'Bottom',
		name: 'Cheshire Wash Denim',
		purchase_link: 'https://www.jcrew.com/mens_category/PantFitGuide/Denim/484/PRDOVR~C9075/C9075.jsp',
		item_img: File.new("public/images/items/denim1.png")
	},
	{
		item_category: 'Bottom',
		name: 'Selvidge Jeans',
		purchase_link: 'https://www.jcrew.com/mens_category/PantFitGuide/Denim/wallacebarnesslim/PRDOVR~C9378/C9378.jsp',
		item_img: File.new("public/images/items/denim2.png")
	},

])

