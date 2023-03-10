# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"

Place.destroy_all
MenuItem.destroy_all
User.destroy_all

user = User.create(
  email: "user@admin.com",
  password: "123456",
  password_confirmation: "123456",
  first_name: "Patricia",
  last_name: "Lambertz"
)

mcdonalds = Place.new(
  {
    name: "McDonalds",
    address: "Rudolfplatz 2",
    cuisine: "American",
    category: "Restaurant"
  }
)
mcdonalds.user = user
mcdonalds.save!

mongol = Place.new(
  {
    name: "Mongol",
    address: "Friesenstraße 34",
    category: "Bar"
  }
)
mongol.user = user
mongol.save!

punjabi = Place.new(
  {
    name: "Punjabi Palace",
    address: "Venloer Straße 53",
    cuisine: "Indian",
    category: "Restaurant"
  }
)
punjabi.user = user
punjabi.save!

cafe = Place.new(
  {
    name: "Cafe-Coffee-Day",
    address: "Ehrenstraße 34",
    category: "Cafe"
  }
)
cafe.user = user
cafe.save!

file = URI.open("https://images.unsplash.com/photo-1589302168068-964664d93dc0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8YmlyeWFuaXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60")
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
indian_biryani.photo.attach(io: file, filename: "nes.png", content_type: "image/png")

indian_biryani.place = punjabi
indian_biryani.save!

file = URI.open("https://images.unsplash.com/photo-1516743619420-154b70a65fea?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8Y2FwcHVjY2lub3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60")

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
cappuccino_cafe.photo.attach(io: file, filename: "nes.png", content_type: "image/png")

cappuccino_cafe.place = cafe
cappuccino_cafe.save!
