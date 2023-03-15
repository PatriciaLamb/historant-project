# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"

MenuItem.destroy_all
Place.destroy_all
User.destroy_all

user = User.create(
  email: "user@admin.com",
  password: "123456",
  password_confirmation: "123456",
  first_name: "Patricia",
  last_name: "Lambertz"
)

sunshine = Place.new(
  {
    name: "Cafe Sunshine",
    address: "Richard-Wagner-Str. 12, 50674 Cologne, Germany",
    cuisine: "Spanish",
    category: "Cafe"
  }
)

sunshine.user = user
sunshine.save!

chez = Place.new(
  {
    name: "Chez Céline",
    address: "127 Rue de Bagnolet, 75020 Paris, France",
    cuisine: "French",
    category: "Restaurant"
  }
)

chez.user = user
chez.save!

nolbu = Place.new(
  {
    name: "Nolbu",
    address: "Lambachstraße 23, 44145 Dortmund, Germany",
    cuisine: "Japanese",
    category: "Restaurant"
  }
)

nolbu.user = user
nolbu.save!

hanoi = Place.new(
  {
    name: "Hanoi",
    address: "Friesenstraße 123, 50670 Cologne, Germany",
    cuisine: "Vietnamese",
    category: "Restaurant"
  }
)

hanoi.user = user
hanoi.save!

hawaii = Place.new(
  {
    name: "Hawaiian Dream",
    address: "Hohe Str. 52, 50667 Cologne, Germany",
    cuisine: "Hawaiian",
    category: "Bar"
  }
)

hawaii.user = user
hawaii.save!


banana = Place.new(
  {
    name: "Sweet Banana",
    address: "Via Nicola Porpora, 55, 10154 Torino TO, Italy",
    cuisine: "Italian",
    category: "Cafe"
  }
)

banana.user = user
banana.save!

ragatta = Place.new(
  {
    name: "RaGatta",
    address: "Via del Corso, 181-188, 00186 Roma RM, Italy",
    cuisine: "Italian",
    category: "Restaurant"
  }
)

ragatta.user = user
ragatta.save!

cherry = Place.new(
  {
    name: "Red Cherry",
    address: "Wallrafplatz 5, 50667 Cologne, Germany",
    cuisine: "Italian",
    category: "Restaurant"
  }
)

cherry.user = user
cherry.save!

happy = Place.new(
  {
    name: "Happy Day",
    address: "Wallrafplatz 5, 50667 Cologne, Germany",
    cuisine: "Italian",
    category: "Restaurant"
  }
)

happy.user = user
happy.save!

imi = Place.new(
  {
    name: "Imi's Steakhouse",
    address: "Stromstraße 41, 40221 Düsseldorf, Germany",
    cuisine: "American",
    category: "Restaurant"
  }
)

imi.user = user
imi.save!

churros = MenuItem.new(
  {
    name: "Churros",
    price: 6.50,
    category: "Bakery item",
    visit_date: Date.today - 15,
    rating: 4,
    description: "Very tasty and crispy. I didn't like the sugar on top though. Made it too sweet for me."
  }
)

file = URI.open("https://res.cloudinary.com/dwrkiuiqa/image/upload/v1678790563/rosy-ko-23dFj4fMPnc-unsplash_v1hvjr.jpg")

churros.photo.attach(io: file, filename: "nes.png", content_type: "image/png")

churros.place = sunshine
churros.save!

rata = MenuItem.new(
  {
    name: "Ratatouille",
    price: 9,
    category: "Main course",
    visit_date: Date.today - 128,
    rating: 5,
    description: "Delicious!!! Can’t describe it better!"
  }
)

file = URI.open("https://res.cloudinary.com/dwrkiuiqa/image/upload/v1678791016/marjan-sadeghi-3vDJ--i7w88-unsplash_gvuemj.jpg")

rata.photo.attach(io: file, filename: "nes.png", content_type: "image/png")

rata.place = chez
rata.save!

basque = MenuItem.new(
  {
    name: "Basque Chicken",
    price: 15.50,
    category: "Main course",
    visit_date: Date.today - 153,
    rating: 4,
    description: "I liked it! Very yummy! Maybe more seasoning next time!"
  }
)

file = URI.open("https://res.cloudinary.com/dwrkiuiqa/image/upload/v1678791538/basque-chicken-2600x1040-7f9d1e3b5ad48de2cdb4b3325ce68bcc_qgnq86.jpg")

basque.photo.attach(io: file, filename: "nes.png", content_type: "image/png")

basque.place = chez
basque.save!

souffle = MenuItem.new(
  {
    name: "Chocolate soufflé",
    price: 6,
    category: "Dessert",
    visit_date: Date.today - 153,
    rating: 5,
    description: "Very delicious! Can’t be better!"
  }
)

file = URI.open("https://res.cloudinary.com/dwrkiuiqa/image/upload/v1678791735/taylor-kiser-1su-ueyLoe0-unsplash_ndnxpf.jpg")

souffle.photo.attach(io: file, filename: "nes.png", content_type: "image/png")

souffle.place = chez
souffle.save!

onion = MenuItem.new(
  {
    name: "Onion Soup",
    price: 6.50,
    category: "Starter",
    visit_date: Date.today - 153,
    rating: 5,
    description: "A perfect appetizer! Want to have it everytime I am here."
  }
)

file = URI.open("https://res.cloudinary.com/dwrkiuiqa/image/upload/v1678791902/dana-devolk-BJet_Z80fv8-unsplash_yzlrch.jpg")

onion.photo.attach(io: file, filename: "nes.png", content_type: "image/png")

onion.place = chez
onion.save!

mushroom = MenuItem.new(
  {
    name: "Stuffed Mushrooms",
    price: 6.50,
    category: "Side dish",
    visit_date: Date.today - 200,
    rating: 5,
    description: "Perfect! Remember the staff to always over-bake them for you."
  }
)

file = URI.open("https://res.cloudinary.com/dwrkiuiqa/image/upload/v1678792474/mushrooms_pesnbq.jpg")

mushroom.photo.attach(io: file, filename: "nes.png", content_type: "image/png")

mushroom.place = chez
mushroom.save!

cider = MenuItem.new(
  {
    name: "Apple Cider",
    price: 7,
    category: "Beverage",
    visit_date: Date.today - 200,
    rating: 4,
    description: "Didn’t like the dry that much. Next time try it sweet or medium-dry."
  }
)

file = URI.open("https://res.cloudinary.com/dwrkiuiqa/image/upload/v1678792641/jennifer-schmidt-XkUJ_hgBZX4-unsplash_qsxrok.jpg")

cider.photo.attach(io: file, filename: "nes.png", content_type: "image/png")

cider.place = chez
cider.save!

lyonnaise = MenuItem.new(
  {
    name: "Salad Lyonnaise",
    price: 12,
    category: "Salad",
    visit_date: Date.today - 200,
    rating: 5,
    description: "Perfect. Loved it! Very large portion!"
  }
)

file = URI.open("https://res.cloudinary.com/dwrkiuiqa/image/upload/v1678793047/lyonnaise-still-superJumbo_bzpve7.jpg")

lyonnaise.photo.attach(io: file, filename: "nes.png", content_type: "image/png")

lyonnaise.place = chez
lyonnaise.save!

dragon = MenuItem.new(
  {
    name: "Red Dragon Roll",
    price: 16,
    category: "Main course",
    visit_date: Date.today - 12,
    rating: 5,
    description: "Simply perfect! There is also Green Dragon Roll with avocados instead of salmon. Try it also!"
  }
)

file = URI.open("https://res.cloudinary.com/dwrkiuiqa/image/upload/v1678793813/87d7e1853f9858976161870f73c17c7b_lnzpzo.jpg")

dragon.photo.attach(io: file, filename: "nes.png", content_type: "image/png")

dragon.place = nolbu
dragon.save!

bean = MenuItem.new(
  {
    name: "Red Bean Ice Cream",
    price: 4.50,
    category: "Dessert",
    visit_date: Date.today - 12,
    rating: 2,
    description: "Big portion! It wasn’t creamy at all, with lots of small ice pieces."
  }
)

file = URI.open("https://res.cloudinary.com/dwrkiuiqa/image/upload/v1678794118/red-bean-ice-cream-1_yvliu1.jpg")

bean.photo.attach(io: file, filename: "nes.png", content_type: "image/png")

bean.place = nolbu
bean.save!

sashimi = MenuItem.new(
  {
    name: "Sashimi Salad",
    price: 12,
    category: "Salad",
    visit_date: Date.today - 12,
    rating: 5,
    description: "Delicious but the sesame sauce could have been more!"
  }
)

file = URI.open("https://res.cloudinary.com/dwrkiuiqa/image/upload/v1678794441/sashimi_m20quv.jpg")

sashimi.photo.attach(io: file, filename: "nes.png", content_type: "image/png")

sashimi.place = nolbu
sashimi.save!

curry = MenuItem.new(
  {
    name: "Red Curry Sauce",
    price: 11.50,
    category: "Salad",
    visit_date: Date.today - 40,
    rating: 5,
    description: "Hot hot hot! Delicious! Sauce could have been more though. I had it with chicken. Maybe with fish next time?!"
  }
)

file = URI.open("https://res.cloudinary.com/dwrkiuiqa/image/upload/v1678794792/IMG_4689_kpkijy.jpg")

curry.photo.attach(io: file, filename: "nes.png", content_type: "image/png")

curry.place = hanoi
curry.save!

crab = MenuItem.new(
  {
    name: "Crab & Asparagus Soup",
    price: 6.50,
    category: "Starter",
    visit_date: Date.today - 40,
    rating: 3,
    description: "The asparagus was not so fresh!"
  }
)

file = URI.open("https://res.cloudinary.com/dwrkiuiqa/image/upload/v1678794792/IMG_4689_kpkijy.jpg")

crab.photo.attach(io: file, filename: "nes.png", content_type: "image/png")

crab.place = hanoi
crab.save!

lychee = MenuItem.new(
  {
    name: "Empress Gin and Lychee Gimlet Cocktail",
    price: 8,
    category: "Beverage",
    visit_date: Date.today - 20,
    rating: 4,
    description: "The taste was amazing! But too many ice cubes inside!"
  }
)

file = URI.open("https://res.cloudinary.com/dwrkiuiqa/image/upload/v1678795223/lychee3_cuuqau.jpg")

lychee.photo.attach(io: file, filename: "nes.png", content_type: "image/png")

lychee.place = hawaii
lychee.save!

popcorn = MenuItem.new(
  {
    name: "Hurricane Popcorn",
    price: 3.50,
    category: "Snack",
    visit_date: Date.today - 20,
    rating: 5,
    description: "Wow! Salty, sweet and buttery! Loved it!"
  }
)

file = URI.open("https://res.cloudinary.com/dwrkiuiqa/image/upload/v1678795367/IMG_8533_bcv2ws.jpg")

popcorn.photo.attach(io: file, filename: "nes.png", content_type: "image/png")

popcorn.place = hawaii
popcorn.save!

jerky = MenuItem.new(
  {
    name: "Fish Jerky",
    price: 8,
    category: "Snack",
    visit_date: Date.today - 10,
    rating: 3,
    description: "Not bad. Too expensive for the very small portion."
  }
)

file = URI.open("https://res.cloudinary.com/dwrkiuiqa/image/upload/v1678795487/fish-jerky-1_ni3zdu.jpg")

jerky.photo.attach(io: file, filename: "nes.png", content_type: "image/png")

jerky.place = hawaii
jerky.save!

cannoli = MenuItem.new(
  {
    name: "Pistachio Cannoli",
    price: 5,
    category: "Bakery item",
    visit_date: Date.today - 200,
    rating: 3,
    description: "Sweet and yummy! Perfect for the price."
  }
)

file = URI.open("https://res.cloudinary.com/dwrkiuiqa/image/upload/v1678797185/Pistachio-Cannoli_162-1_rkd07c.jpg")

cannoli.photo.attach(io: file, filename: "nes.png", content_type: "image/png")

cannoli.place = banana
cannoli.save!

calzone = MenuItem.new(
  {
    name: "Salami Calzone",
    price: 10,
    category: "Main course",
    visit_date: Date.today - 250,
    rating: 5,
    description: "Very delicious and hot."
  }
)

file = URI.open("https://res.cloudinary.com/dwrkiuiqa/image/upload/v1678797184/calzone_thecozyapron_1_f3ofz4.jpg")

calzone.photo.attach(io: file, filename: "nes.png", content_type: "image/png")

calzone.place = ragatta
calzone.save!

tiramisu = MenuItem.new(
  {
    name: "Tiramisu",
    price: 5.50,
    category: "Dessert",
    visit_date: Date.today - 250,
    rating: 3,
    description: "Heavenly! Just like the Granny’s!"
  }
)

file = URI.open("https://res.cloudinary.com/dwrkiuiqa/image/upload/v1678797186/marianna-ole-4El3DUkQs2g-unsplash_sttbfs.jpg")

tiramisu.photo.attach(io: file, filename: "nes.png", content_type: "image/png")

tiramisu.place = ragatta
tiramisu.save!

forest = MenuItem.new(
  {
    name: "Black Forest Gateau",
    price: 6,
    category: "Dessert",
    visit_date: Date.today - 18,
    rating: 5,
    description: "Very very tasty and beautiful! Still not tastier than Mamma’s!"
  }
)

file = URI.open("https://res.cloudinary.com/dwrkiuiqa/image/upload/v1678798301/jacob-thomas-6jHpcBPw7i8-unsplash_hcjqn5.jpg")

forest.photo.attach(io: file, filename: "nes.png", content_type: "image/png")

forest.place = cherry
forest.save!

streuselkuchen = MenuItem.new(
  {
    name: "Cherry Streuselkuchen",
    price: 4.50,
    category: "Dessert",
    visit_date: Date.today - 28,
    rating: 3,
    description: "Could have more butter and less sugar."
  }
)

file = URI.open("https://res.cloudinary.com/dwrkiuiqa/image/upload/v1678798300/streuselkuchen-mit-himbeeren-F8429201_id_5df173a7_b_lecker_w_610_cg_c_ruosop.jpg")

streuselkuchen.photo.attach(io: file, filename: "nes.png", content_type: "image/png")

streuselkuchen.place = cherry
streuselkuchen.save!

maitai = MenuItem.new(
  {
    name: "Mai Tai Cocktail",
    price: 9.50,
    category: "Beverage",
    visit_date: Date.today - 70,
    rating: 4,
    description: "Good! Less lime juice next time."
  }
)

file = URI.open("https://res.cloudinary.com/dwrkiuiqa/image/upload/v1678798300/mai-tai-720x720-primary-e09e24f1cacd4b3896f5aa32ba51dcdd_drmq95.jpg")

maitai.photo.attach(io: file, filename: "nes.png", content_type: "image/png")

maitai.place = happy
maitai.save!

buffalo = MenuItem.new(
  {
    name: "Spicy Buffalo Wings",
    price: 10,
    category: "Snack",
    visit_date: Date.today - 23,
    rating: 5,
    description: "Hot and spicy! Can even be more spicy next time."
  }
)

file = URI.open("https://res.cloudinary.com/dwrkiuiqa/image/upload/v1678798300/Buffalo-Honey-Hot-Wings-main2_smshzg.jpg")

buffalo.photo.attach(io: file, filename: "nes.png", content_type: "image/png")

buffalo.place = happy
buffalo.save!

rib = MenuItem.new(
  {
    name: "Big Prime Rib",
    price: 20,
    category: "Main Course",
    visit_date: Date.today - 5,
    rating: 4,
    description: "I ordered medium-well cooked but got medium-rare! But very tasty after all."
  }
)

file = URI.open("https://res.cloudinary.com/dwrkiuiqa/image/upload/v1678798302/rib-eye_steak_with_61963_16x9_s6yrun.jpg")

rib.photo.attach(io: file, filename: "nes.png", content_type: "image/png")

rib.place = imi
rib.save!

burger = MenuItem.new(
  {
    name: "Chili Cheese Burger",
    price: 14,
    category: "Main Course",
    visit_date: Date.today - 45,
    rating: 5,
    description: "Very delicious and juicy! Next time it can have more tomatoes and less onion."
  }
)

file = URI.open("https://res.cloudinary.com/dwrkiuiqa/image/upload/v1678798305/osama-bgid-uOsGAtKos8g-unsplash_dywkgr.jpg")

burger.photo.attach(io: file, filename: "nes.png", content_type: "image/png")

burger.place = imi
burger.save!

curly = MenuItem.new(
  {
    name: "Curly Fries with Bacon",
    price: 9,
    category: "Side dish",
    visit_date: Date.today - 27,
    rating: 4,
    description: "Yummy. Portion was rather small for the price!"
  }
)

file = URI.open("https://res.cloudinary.com/dwrkiuiqa/image/upload/v1678799058/Screenshot_2023-03-14curly_140346_nhy8am.jpg")

curly.photo.attach(io: file, filename: "nes.png", content_type: "image/png")

curly.place = imi
curly.save!
