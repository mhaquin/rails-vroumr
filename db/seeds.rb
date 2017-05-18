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
    photo_url:    "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0d/Peugeot_Cyclomoteur_BB_%281957%29.jpg/1024px-Peugeot_Cyclomoteur_BB_%281957%29.jpg",
    address:      "EXO 33 Baurech téléski"
  },
  {
    name:         "Peugeot 205",
    price:        30.00,
    user:         user1,
    category:     Category.all.where(name: 'Compact').last,
    photo_url:    "https://images.caradisiac.com/logos-ref/gamme/gamme--peugeot-205/S7-gamme--peugeot-205.jpg",
    address:      "EXO 33 Baurech téléski"
  },
  {
    name:         "Mercedes Van MB 100",
    price:        75.00,
    user:         user2,
    category:     Category.all.where(name: 'Van').last,
    photo_url:    "https://upload.wikimedia.org/wikipedia/commons/f/fb/2001_Mercedes-Benz_MB100_van_%2822838835643%29.jpg",
    address:      "EXO 33 Baurech téléski"
  },
  {
    name:         "Porshe",
    price:        200.00,
    user:         user2,
    category:     Category.all.where(name: 'Sport').last,
    photo_url:    "https://images.caradisiac.com/logos-ref/modele/modele--porsche-911-type-991-turbo/S7-modele--porsche-911-type-991-turbo.jpg",
    address:      "Paris"
  },
  {
    name:         "Renault Trafic",
    price:        100.00,
    user:         user2,
    category:     Category.all.where(name: 'Truck').last,
    photo_url:    "https://img5.leboncoin.fr/ad-image/285ce03302c142defdfb9ae3c68e6608a15a2abe.jpg",
    address:      "142 rue du Faubourg Saint Martin, Paris"
  },
  {
    name:         "Toyota Landcruiser 4WD",
    price:        150.00,
    user:         user2,
    category:     Category.all.where(name: '4WD').last,
    photo_url:    "http://topclassiccarsforsale.com/uploads/photoalbum/toyota-land-cruiser-fj60-red-1.JPG",
    address:      "10 rue des capitaines de clerville, Nantes"
  },
  {
    name:         "Peugeot 508 SW ",
    price:        100.00,
    user:         user2,
    category:     Category.all.where(name: 'Break').last,
    photo_url:    "https://images.caradisiac.com/logos/4/2/4/8/184248/S7-Achat-d-occasion-quelle-Peugeot-508-acheter-100355.jpg",
    address:      "10 rue des capitaines de clerville, Nantes"
  },
  {
    name:         "Audi A8 ",
    price:        200.00,
    user:         user3,
    category:     Category.all.where(name: 'Berline').last,
    photo_url:    "https://images.caradisiac.com/logos-ref/modele/modele--audi-a8-3e-generation/S7-modele--audi-a8-3e-generation.jpg",
    address:      "Le Wagon Bordeaux"
  },
  {
    name:         "DeLorean DMC-12",
    price:        90.00,
    user:         user3,
    category:     Category.all.where(name: 'Vintage').last,
    photo_url:    "http://www.telegraph.co.uk/cars/images/2016/06/24/101519846_DeLorean-DMC-12-ReduxEyevine-xlarge_trans_NvBQzQNjv4BqqMKo2z_7YU_WfwkpJGaSMkWQ2KsSeoXntDmU1Wc8Jvc.jpg",
    address:      "Le Wagon Bordeaux"
  },
  {
    name:         "Renault Kangoo",
    price:        50.00,
    user:         user3,
    category:     Category.all.where(name: 'Familial').last,
    photo_url:    "https://images.caradisiac.com/logos/7/7/3/2/177732/S7-Maxi-fiche-fiabilite-que-vaut-le-Renault-Kangoo-2-en-occasion-93188.jpg",
    address:      "142 rue du Faubourg Saint Martin, Paris"
  },
  {
    name:         "Bugatti Veyron",
    price:        250.00,
    user:         user3,
    category:     Category.all.where(name: 'Sport').last,
    photo_url:    "http://files.vroom.be/pictures/content/2015/Aug/1284783/1439900076.9919.jpg?width=720&height=393",
    address:      "10 rue des capitaines de clerville, Nantes"
  },
  {
    name:         "Harley Davidson",
    price:        150.00,
    user:         user3,
    category:     Category.all.where(name: 'Motorbike').last,
    photo_url:    "http://www.harley-davidson-besancon.com/img/visuals/motoNeuve.jpg",
    address:      "Le Wagon Bordeaux"
  },
  {
    name:         "Mitsubishi parero",
    price:        20.00,
    user:         user3,
    category:     Category.all.where(name: '4WD').last,
    photo_url:    "http://www.harley-davidson-besancon.com/img/visuals/motoNeuve.jpg",
    address:      "3 passage bernard, Nantes"
  },
  {
    name:         "yamaha",
    price:        50.00,
    user:         user3,
    category:     Category.all.where(name: 'Motorbike').last,
    photo_url:    "http://www.lerepairedesmotards.com/img/essais/yamaha/r6/yamaha-r6-av.jpg",
    address:      "3 passage bernard, Nantes"
  },
  {
    name:         "Renault Twingo",
    price:        30.00,
    user:         user3,
    category:     Category.all.where(name: 'Compact').last,
    photo_url:    "http://photos.auto-selection.com/fiche-technique/renault-twingo-p0004091.jpg",
    address:      "142 rue du Faubourg Saint Martin, Paris"
  },
  {
    name:         "Volkswagen Van",
    price:        75.00,
    user:         user3,
    category:     Category.all.where(name: 'Van').last,
    photo_url:    "http://4.bp.blogspot.com/-zScrGWGYCRw/VbfU-dMU7sI/AAAAAAABDv0/Qk2Dlkp7Dhg/s1600/64-VW-Bus-Camper.jpg",
    address:      "142 rue du Faubourg Saint Martin, Paris"
  },
  {
    name:         "Ferrari F12",
    price:        200.00,
    user:         user3,
    category:     Category.all.where(name: 'Sport').last,
    photo_url:    "http://img0.gtsstatic.com/ferrari/le-depart-et-l-acceleration-fulgurants-d-une-ferrari-f12-berlinetta_149378_w696.jpg",
    address:      "Le Wagon Bordeaux"
  },
  {
    name:         "Renault truck",
    price:        100.00,
    user:         user3,
    category:     Category.all.where(name: 'Truck').last,
    photo_url:    "http://img.over-blog-kiwi.com/0/54/74/56/20150322/ob_f88c4d_c380-6-4-truck.jpg",
    address:      "Arcachon"
  },
  {
    name:         "Jeep",
    price:        150.00,
    user:         user3,
    category:     Category.all.where(name: '4WD').last,
    photo_url:    "https://images.caradisiac.com/logos-ref/gamme/gamme--jeep-cj7/S7-gamme--jeep-cj7.jpg",
    address:      "Arcachon"
  },
  {
    name:         "Peugeot 306 break ",
    price:        100.00,
    user:         user3,
    category:     Category.all.where(name: 'Break').last,
    photo_url:    "https://images.caradisiac.com/logos-ref/modele/modele--peugeot-306-break/S7-modele--peugeot-306-break.jpg",
    address:      "Arcachon"
  },
  {
    name:         "Mercedes class E",
    price:        200.00,
    user:         user3,
    category:     Category.all.where(name: 'Berline').last,
    photo_url:    "https://images.caradisiac.com/logos-ref/modele/modele--mercedes-classe-e-4-coupe/S7-modele--mercedes-classe-e-4-coupe.jpg",
    address:      "Arcachon"
  },
  {
    name:         "Citroen DS",
    price:        90.00,
    user:         user3,
    category:     Category.all.where(name: 'Vintage').last,
    photo_url:    "http://www.losson.com/imgmodele/322/2134471358DSC00289.JPG",
    address:      "Arcachon"
  },
  {
    name:         "Renault Scenic",
    price:        50.00,
    user:         user4,
    category:     Category.all.where(name: 'Familial').last,
    photo_url:    "https://images.caradisiac.com/logos-ref/modele/modele--renault-scenic-3/S7-modele--renault-scenic-3.jpg",
    address:      "Gare d'Arcachon"
  },
  {
    name:         "Mustang GT500",
    price:        250.00,
    user:         user4,
    category:     Category.all.where(name: 'Sport').last,
    photo_url:    "http://www.madness-us-cars.com/vehicules-neufs/mustang-shelby-gt-500-2007-1.jpg",
    address:      "92 rue des martyrs, Paris"
  },
  {
    name:         "Vespa",
    price:        150.00,
    user:         user4,
    category:     Category.all.where(name: 'Motorbike').last,
    photo_url:    "https://s-media-cache-ak0.pinimg.com/originals/14/f0/0e/14f00efff319a892cb321a40222fcb0b.jpg",
    address:      "92 rue des martyrs, Paris"
  },
  {
    name:         "Hyundai",
    price:        150.00,
    user:         user4,
    category:     Category.all.where(name: '4WD').last,
    photo_url:    "http://files.vroom.be/pictures/press/2005/06/hyundai-tucson-4wd/4.jpg?width=720&height=393",
    address:      "Gare d'Arcachon"
  }
]

Vehicle.create!(vehicles_attributes)
puts 'Finished!'
