puts "Creating companies..."
google = Company.create(name: "Google", founding_year: 1998)
facebook = Company.create(name: "Facebook", founding_year: 2004)
dunder = Company.create(name: "Dunder Mifflin", founding_year: 2002)
enron = Company.create(name: "Enron", founding_year: 1995)

puts "Creating devs..."
rick = Dev.create(name: "Rick")
morty = Dev.create(name: "Morty")
meseeks = Dev.create(name: "Mr. Meseeks")
gazor = Dev.create(name: "Gazorpazop")

puts "Creating freebies..."

Freebie.create(item_name: "SalesForce Fidget Cube", value: 8, dev_id: gazor.id, company_id: enron.id)
Freebie.create(item_name: "Google Mug", value: 15, dev_id: meseeks.id, company_id: dunder.id)
Freebie.create(item_name: "Citi Bank Shirt", value: 5, dev_id: morty.id, company_id: enron.id)
Freebie.create(item_name: "Apple Apple Sticker", value: 20, dev_id: rick.id, company_id: google.id)

puts "Seeding done!"
