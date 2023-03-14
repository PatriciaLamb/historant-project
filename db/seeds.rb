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
    name: "Imi & Co. Burger & Steakhouse",
    address: "Stromstraße 41, 40221 Düsseldorf, Germany",
    cuisine: "American",
    category: "Restaurant"
  }
)

imi.user = user
imi.save!

indian_biryani = MenuItem.new(
  {
    name: "Biryani",
    price: 10,
    category: "Main Course",
    visit_date: Date.today,
    rating: 5,
    description: "Fantastic, with lots of sauce"
  }
)

file = URI.open("https://images.unsplash.com/photo-1589302168068-964664d93dc0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8YmlyeWFuaXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60")

indian_biryani.photo.attach(io: file, filename: "nes.png", content_type: "image/png")

indian_biryani.place = punjabi
indian_biryani.save!


cappuccino_cafe = MenuItem.new(
  {
    name: "Cappuccino",
    price: 3.5,
    category: "Hot Beverage",
    visit_date: Date.yesterday,
    rating: 1,
    description: "never again.. tasted like instant coffee"
  }
)

file = URI.open("https://images.unsplash.com/photo-1516743619420-154b70a65fea?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8Y2FwcHVjY2lub3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60")

cappuccino_cafe.photo.attach(io: file, filename: "nes.png", content_type: "image/png")

cappuccino_cafe.place = cafe
cappuccino_cafe.save!
