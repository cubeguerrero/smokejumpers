# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

northwest = Area.find_or_create_by(name: "Northwest")
northern_california = Area.find_or_create_by(name: "Northern California")
northern_rockies = Area.find_or_create_by(name: "Northern Rockies")
great_basin = Area.find_or_create_by(name: "Great Basin")
alaska = Area.find_or_create_by(name: "Alaska")
canada = Area.find_or_create_by(name: "Canada")

usfs = Federation.find_or_create_by(name: "United States Forest Service", description: "To sustain the health, diversity, and productivity of the Nation’s forests and grasslands to meet the needs of present and future generations.")
blm = Federation.find_or_create_by(name: "Bureau of Land Management", description: "The BLM was established in 1946.")
bcpp = Federation.find_or_create_by(name: "British Colombia's Parattack Program", description: "The BC Wildfire Service utilizes a variety of Initial Attack and Unit Crews.")

redmond = Team.find_or_create_by(area: northwest, federation: usfs, name: "Redmond Smokejumpers")
north_cascades = Team.find_or_create_by(area: northwest, federation: usfs, name: "North Cascades Smokejumpers")
region_five = Team.find_or_create_by(area: northern_california, federation: usfs, name: "Region 5 Smokejumpers")
missoula = Team.find_or_create_by(area: northern_rockies, federation: usfs, name: "Missoula Smokejumpers")
grangeville = Team.find_or_create_by(area: northern_rockies, federation: usfs, name: "Grangeville Smokejumpers")
west_yellowstone = Team.find_or_create_by(area: northern_rockies, federation: usfs, name: "West Yellowstone Smokejumpers")
mccall = Team.find_or_create_by(area: great_basin, federation: usfs, name: "McCall Smokejumpers")
boise = Team.find_or_create_by(area: great_basin, federation: blm, name: "Boise Smokejumpers")
alaska_smokejumper = Team.find_or_create_by(area: alaska, federation: blm, name: "Alaska Smokejumpers")
north_peace = Team.find_or_create_by(area: canada, federation: bcpp, name: "North-Peace Smokejumpers")
