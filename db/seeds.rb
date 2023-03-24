require "open-uri"

MenuItem.destroy_all
Place.destroy_all
User.destroy_all

user = User.create(
  email: "user@admin.com",
  password: "321654",
  password_confirmation: "321654",
  first_name: "Lisa",
  last_name: "Lambertz"
)

ehrenfeldcafe = Place.new(
  {
    name: "Ehrenfeld Cafe",
    address: "Venloer Str. 176, 50823 Cologne, Germany",
    category: "Cafe"
  }
)

ehrenfeldcafe.user = user
ehrenfeldcafe.save!

hof = Place.new(
  {
    name: "Belgischer Hof",
    address: "Brüsseler Str. 54, 50674 Cologne, Germany",
    cuisine: "French",
    category: "Restaurant"
  }
)

hof.user = user
hof.save!

zen = Place.new(
  {
    name: "Zen",
    address: "Aachener Str. 20, 50674 Cologne, Germany",
    cuisine: "Japanese",
    category: "Restaurant"
  }
)

zen.user = user
zen.save!

hanoi = Place.new(
  {
    name: "Hanoi 36",
    address: "Venloer Str. 239B, 50823 Cologne, Germany",
    cuisine: "Vietnamese",
    category: "Restaurant"
  }
)

hanoi.user = user
hanoi.save!

hawaii = Place.new(
  {
    name: "Rainbow Poke",
    address: "Auf dem Berlich 13, 50667 Cologne, Germany",
    cuisine: "Hawaiian",
    category: "Restaurant"
  }
)

hawaii.user = user
hawaii.save!

licht = Place.new(
  {
    name: "Südlicht Cafe",
    address: "Eifelwall 56, 50674 Cologen, Germany",
    category: "Cafe"
  }
)

licht.user = user
licht.save!

pizza = Place.new(
  {
    name: "Pizzeria Piccolo",
    address: "Eifelwall 56, 50674 Cologne",
    cuisine: "Italian",
    category: "Restaurant"
  }
)

pizza.user = user
pizza.save!

tutto = Place.new(
  {
    name: "Tutto",
    address: "Kreuzgasse 2-4, 50677 Cologne",
    cuisine: "Italian",
    category: "Restaurant"
  }
)

tutto.user = user
tutto.save!

steaket = Place.new(
  {
    name: "Steaket",
    address: "Hohenzollernring 17, 50672 Köln",
    cuisine: "American",
    category: "Restaurant"
  }
)

steaket.user = user
steaket.save!

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

churros.place = ehrenfeldcafe
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

rata.place = hof
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

basque.place = hof
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

souffle.place = hof
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

onion.place = hof
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

mushroom.place = hof
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

cider.place = hof
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

lyonnaise.place = hof
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

dragon.place = zen
dragon.save!

bean = MenuItem.new(
  {
    name: "Red Bean Ice Cream",
    price: 4.50,
    category: "Dessert",
    visit_date: Date.today - 12,
    rating: 3,
    description: "Big portion! It wasn’t creamy at all, with lots of small ice pieces."
  }
)

file = URI.open("https://res.cloudinary.com/dwrkiuiqa/image/upload/v1678794118/red-bean-ice-cream-1_yvliu1.jpg")

bean.photo.attach(io: file, filename: "nes.png", content_type: "image/png")

bean.place = zen
bean.save!

sashimi = MenuItem.new(
  {
    name: "Sashimi Salad",
    price: 12,
    category: "Salad",
    visit_date: Date.today - 12,
    rating: 4,
    description: "Delicious but the sesame sauce could have been more!"
  }
)

file = URI.open("https://res.cloudinary.com/dwrkiuiqa/image/upload/v1678794441/sashimi_m20quv.jpg")

sashimi.photo.attach(io: file, filename: "nes.png", content_type: "image/png")

sashimi.place = zen
sashimi.save!

curry = MenuItem.new(
  {
    name: "Red Curry Sauce",
    price: 11.50,
    category: "Salad",
    visit_date: Date.today - 40,
    rating: 4,
    description: "Hot hot hot! Delicious! Sauce could have been more though. I had it with chicken. Maybe with fish next time?!"
  }
)

file = URI.open("https://res.cloudinary.com/dwrkiuiqa/image/upload/v1678794792/IMG_4689_kpkijy.jpg")

curry.photo.attach(io: file, filename: "nes.png", content_type: "image/png")

curry.place = hanoi
curry.save!

crab = MenuItem.new(
  {
    name: "Pho Bo",
    price: 11.50,
    category: "Main Course",
    visit_date: Date.today - 40,
    rating: 3,
    description: "Very low in taste, tasted almost like water?!"
  }
)

file = URI.open("https://images.unsplash.com/photo-1478749485505-2a903a729c63?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8YXNwYXJhZ3VzJTIwc291cHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60")

crab.photo.attach(io: file, filename: "nes.png", content_type: "image/png")

crab.place = hanoi
crab.save!

poke = MenuItem.new(
  {
    name: "Poke Bowl Classic",
    price: 8,
    category: "Main Course",
    visit_date: Date.today - 20,
    rating: 4,
    description: "The taste was amazing! But the portion just too small, next time I'll better order the XL portion!"
  }
)

file = URI.open("https://res.cloudinary.com/doeoic8ow/image/upload/v1678959764/miu-sua-pO9851jklaE-unsplash_amckoa.jpg")

poke.photo.attach(io: file, filename: "nes.png", content_type: "image/png")

poke.place = hawaii
poke.save!

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
    name: "Pistacchio Cannoli",
    price: 5,
    category: "Bakery item",
    visit_date: Date.today - 200,
    rating: 3,
    description: "Sweet and yummy! Perfect for the price."
  }
)

file = URI.open("https://res.cloudinary.com/dwrkiuiqa/image/upload/v1678797185/Pistachio-Cannoli_162-1_rkd07c.jpg")

cannoli.photo.attach(io: file, filename: "nes.png", content_type: "image/png")

cannoli.place = pizza
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

calzone.place = tutto
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

tiramisu.place = tutto
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

forest.place = licht
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

streuselkuchen.place = licht
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

maitai.place = steaket
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

file = URI.open("https://res.cloudinary.com/dwrkiuiqa/image/upload/v1678960047/alexander-kovacs-viUQ9_iuFek-unsplash_pk206b.jpg")

buffalo.photo.attach(io: file, filename: "nes.png", content_type: "image/png")

buffalo.place = steaket
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

rib.place = steaket
rib.save!

burger = MenuItem.new(
  {
    name: "Chili Cheese Burger",
    price: 14,
    category: "Main Course",
    visit_date: Date.today - 45,
    rating: 4,
    description: "Very delicious and juicy! Next time it can have more tomatoes and less onion."
  }
)

file = URI.open("https://res.cloudinary.com/dwrkiuiqa/image/upload/v1678798305/osama-bgid-uOsGAtKos8g-unsplash_dywkgr.jpg")

burger.photo.attach(io: file, filename: "nes.png", content_type: "image/png")

burger.place = steaket
burger.save!

curly = MenuItem.new(
  {
    name: "Fries with Bacon",
    price: 9,
    category: "Side dish",
    visit_date: Date.today - 27,
    rating: 4,
    description: "Yummy. Portion was rather small for the price!"
  }
)

file = URI.open("https://res.cloudinary.com/dwrkiuiqa/image/upload/v1678960047/sanket-shah-IA0UhqgGgNY-unsplash_h9utao.jpg")

curly.photo.attach(io: file, filename: "nes.png", content_type: "image/png")

curly.place = steaket
curly.save!
