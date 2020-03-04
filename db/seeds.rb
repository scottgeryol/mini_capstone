# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

vinyl = Product.new({ name: "The Beatles, Abbey Road", price: $75, image_url: "", description: "This lengendary bands final album.", color: "Clear", weight: 180, tracklist: "", genre: "Rock", size: 12, speed: 45, year: 1969, label: "Capitol Records" })
vinyl.save
vinyl = Product.new({ name: "Phish, A Picture of Nectar", price: $50, image_url: "", description: "A funky experimnental concept album.", color: "Tye-Dye", weight: 180, tracklist: "", genre: "Jam", size: 12, speed: 45, year: 1992, label: "Jemp Records" })
vinyl.save
vinyl = Product.new({ name: "Wilco, Sky Blue Sky", price: $40, image_url: "", description: "Wilco's freshman album.", color: "Sky Blue", weight: 180, tracklist: "", genre: "Rock", size: 12, speed: 45, year: 2007, label: "Nonesuch Recods" })
vinyl.save
