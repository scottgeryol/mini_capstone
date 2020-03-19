vinyl = Product.create({ supplier_id: 2, name: "The Beatles, Abbey Road", price: 75, image_url: "", description: "This lengendary bands final album.", color: "Clear", weight: 180, tracklist: "", genre: "Rock", size: 12, speed: 45, year: 1969, label: "Capitol Records" })
vinyl = Product.create({ supplier_id: 3, name: "Phish, A Picture of Nectar", price: 50, image_url: "", description: "A funky experimnental concept album.", color: "Tye-Dye", weight: 180, tracklist: "", genre: "Jam", size: 12, speed: 45, year: 1992, label: "Jemp Records" })
vinyl = Product.create({ supplier_id: 1, name: "Wilco, Sky Blue Sky", price: 40, image_url: "", description: "Wilco's freshman album.", color: "Sky Blue", weight: 180, tracklist: "", genre: "Rock", size: 12, speed: 45, year: 2007, label: "Nonesuch Recods" })

supplier = Supplier.create({ name: "Unlimited Pressing", email: "up@example.com", phone_number: "555-5555" })
supplier = Supplier.create({ name: "First Choice", email: "firstc@example.com", phone_number: "888-8888" })
supplier = Supplier.create({ name: "Records R Us", email: "rus@example.com", phone_number: "000-0000" })

image = Image.create({ url: "", product_id: 1 })
image = Image.create({ url: "", product_id: 1 })
image = Image.create({ url: "", product_id: 1 })
