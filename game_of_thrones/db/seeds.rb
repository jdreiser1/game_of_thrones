# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
House.destroy_all
Character.destroy_all

stark = House.create(name: "Stark", img_url: "http://vignette4.wikia.nocookie.net/gameofthrones/images/8/8a/House-Stark-Main-Shield.PNG/revision/latest?cb=20160703180116", motto: "Winter is coming", region: "The North")
lannister = House.create(name: "Lannister", img_url: "http://vignette3.wikia.nocookie.net/gameofthrones/images/8/8a/House-Lannister-Main-Shield.PNG/revision/latest?cb=20151207184048", motto: "The Lannisters always pay their debts", region: "King's Landing")
bolton = House.create(name: "Bolton", img_url: "http://vignette1.wikia.nocookie.net/gameofthrones/images/d/dd/House-Bolton-Main-Shield.PNG/revision/latest?cb=20160312000641", motto: "A Naked Man Has Few Secrets; A Flayed Man, None", region: "The North")
targaryen = House.create(name: "Targaryen", img_url: "http://d2ydh70d4b5xgv.cloudfront.net/images/4/4/game-of-thrones-targaryen-shield-fire-and-blood-decal-sticker-42400f33c5c0f3f2ee359e213e334720.jpg", motto: "Fire and Blood", region: "Bay of Dragons")

stark.characters.create([
  {name: "Jon Snow", age: rand(50), img_url: "http://67.media.tumblr.com/ac5be16e56a132b87e00615ea45e17e5/tumblr_ncke4unNJo1rxkqbso1_1280.png"},
  {name: "Sansa Stark", age: rand(50), img_url: "http://img10.deviantart.net/753a/i/2015/071/d/6/sansa_stark__render__by_devilmisao-d8lf3wd.png"},
  {name: "Arya Stark", age: rand(50), img_url: "http://pixel.nymag.com/imgs/daily/vulture/2013/05/08/08-maisie-williams.o.png/a_250x375.png"}
])
bolton.characters.create([
  {name: "Ramsay Bolton", age: rand(50), img_url: "http://vignette1.wikia.nocookie.net/gameofthrones/images/4/41/Ramsay-Bolton-Profile.png/revision/latest?cb=20140605115841"},
  {name: "Roose Bolton", age: rand(50), img_url: "http://vignette1.wikia.nocookie.net/gameofthrones/images/6/62/Roose_Bolton_Season5.png/revision/latest?cb=20150131122254"}
])
targaryen.characters.create([
  {name: "Daenerys Targaryen", age: rand(50), img_url: "http://i.lv3.hbo.com/assets/images/series/game-of-thrones/character/s5/daenarys-1024.jpg"},
  {name: "Rhaegar Targaryen", age: rand(50), img_url: "http://images6.fanpop.com/image/photos/37700000/Game-of-Thrones-game-of-thrones-37712020-1225-1534.jpg"}
])
