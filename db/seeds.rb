# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Order.destroy_all
Vehicle.destroy_all
Category.destroy_all
User.destroy_all
puts 'Cleaning database done'

user1 = User.create!(email: "toto@toto.com", password:"toto1234")
user2 = User.create!(email: "magalie@toto.com", password:"toto1234")
user3 = User.create!(email: "augustin@toto.com", password:"toto1234")
user4 = User.create!(email: "anthony@toto.com", password:"toto1234")
user5 = User.create!(email: "tata@toto.com", password:"toto1234")

puts 'Creating vehicule categories...'
categories_attributes = [
  {
    name: "Motorbike",
  },
  {
    name: "Compact",
  },
  {
    name: "Familial",
  },
  {
    name: "Berline",
  },
  {
    name: "Break",
  },
  {
    name: "Sport",
  },
  {
    name: "Vintage",
  },
  {
    name: "Van",
  },
  {
    name: "Truck",
  },
  {
    name: "4WD",
  }
]

Category.create!(categories_attributes)


puts 'Creating vehicles...'
vehicles_attributes = [
  {
    name:         "Mobylette, Peugeot TSR BB ",
    price:        20.00,
    user:         user1,
    category:     Category.all.where(name: 'Motorbike').last,
    address:      "EXO 33 Baurech téléski"
  },
  {
    name:         "Peugeot 205",
    price:        30.00,
    user:         user1,
    category:     Category.all.where(name: 'Compact').last,
    address:      "EXO 33 Baurech téléski"
  },
  {
    name:         "Mercedes Van MB 100",
    price:        75.00,
    user:         user2,
    category:     Category.all.where(name: 'Van').last,
    address:      "EXO 33 Baurech téléski"
  },
  {
    name:         "Porshe",
    price:        200.00,
    user:         user2,
    category:     Category.all.where(name: 'Sport').last,
    address:      "Paris"
  },
  {
    name:         "Renault Trafic",
    price:        100.00,
    user:         user2,
    category:     Category.all.where(name: 'Truck').last,
    address:      "142 rue du Faubourg Saint Martin, Paris"
  },
  {
    name:         "Toyota Landcruiser 4WD",
    price:        150.00,
    user:         user2,
    category:     Category.all.where(name: '4WD').last,
    address:      "10 rue des capitaines de clerville, Nantes"
  },
  {
    name:         "Peugeot 508 SW ",
    price:        100.00,
    user:         user2,
    category:     Category.all.where(name: 'Break').last,
    address:      "10 rue des capitaines de clerville, Nantes"
  },
  {
    name:         "Audi A8 ",
    price:        200.00,
    user:         user3,
    category:     Category.all.where(name: 'Berline').last,
    address:      "Le Wagon Bordeaux"
  },
  {
    name:         "DeLorean DMC-12",
    price:        90.00,
    user:         user3,
    category:     Category.all.where(name: 'Vintage').last,
    address:      "Le Wagon Bordeaux"
  },
  {
    name:         "Renault Kangoo",
    price:        50.00,
    user:         user3,
    category:     Category.all.where(name: 'Familial').last,
    address:      "142 rue du Faubourg Saint Martin, Paris"
  },
  {
    name:         "Bugatti Veyron",
    price:        250.00,
    user:         user3,
    category:     Category.all.where(name: 'Sport').last,
    address:      "10 rue des capitaines de clerville, Nantes"
  },
  {
    name:         "Harley Davidson",
    price:        150.00,
    user:         user3,
    category:     Category.all.where(name: 'Motorbike').last,
    address:      "Le Wagon Bordeaux"
  },
  {
    name:         "Mitsubishi parero",
    price:        20.00,
    user:         user3,
    category:     Category.all.where(name: '4WD').last,
    address:      "3 passage bernard, Nantes"
  },
  {
    name:         "yamaha",
    price:        50.00,
    user:         user3,
    category:     Category.all.where(name: 'Motorbike').last,
    address:      "3 passage bernard, Nantes"
  },
  {
    name:         "Renault Twingo",
    price:        30.00,
    user:         user3,
    category:     Category.all.where(name: 'Compact').last,
    address:      "142 rue du Faubourg Saint Martin, Paris"
  },
  {
    name:         "Volkswagen Van",
    price:        75.00,
    user:         user3,
    category:     Category.all.where(name: 'Van').last,
    address:      "142 rue du Faubourg Saint Martin, Paris"
  },
  {
    name:         "Ferrari F12",
    price:        200.00,
    user:         user3,
    category:     Category.all.where(name: 'Sport').last,
    address:      "Le Wagon Bordeaux"
  },
  {
    name:         "Renault truck",
    price:        100.00,
    user:         user3,
    category:     Category.all.where(name: 'Truck').last,
    address:      "Arcachon"
  },
  {
    name:         "Jeep",
    price:        150.00,
    user:         user3,
    category:     Category.all.where(name: '4WD').last,
    address:      "Arcachon"
  },
  {
    name:         "Peugeot 306 break ",
    price:        100.00,
    user:         user3,
    category:     Category.all.where(name: 'Break').last,
    address:      "Arcachon"
  },
  {
    name:         "Mercedes class E",
    price:        200.00,
    user:         user3,
    category:     Category.all.where(name: 'Berline').last,
    address:      "Arcachon"
  },
  {
    name:         "Citroen DS",
    price:        90.00,
    user:         user3,
    category:     Category.all.where(name: 'Vintage').last,
    address:      "Arcachon"
  },
  {
    name:         "Renault Scenic",
    price:        50.00,
    user:         user4,
    category:     Category.all.where(name: 'Familial').last,
    address:      "Gare d'Arcachon"
  },
  {
    name:         "Mustang GT500",
    price:        250.00,
    user:         user4,
    category:     Category.all.where(name: 'Sport').last,
    address:      "92 rue des martyrs, Paris"
  },
  {
    name:         "Vespa",
    price:        150.00,
    user:         user4,
    category:     Category.all.where(name: 'Motorbike').last,
    address:      "92 rue des martyrs, Paris"
  },
  {
    name:         "Hyundai",
    price:        150.00,
    user:         user4,
    category:     Category.all.where(name: '4WD').last,
    address:      "Gare d'Arcachon"
  }
]

Vehicle.create!(vehicles_attributes)
puts 'Finished!'
