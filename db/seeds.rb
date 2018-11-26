# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "this works"
allergies = ["Lijnzaad","Sesamzaad","Perzik","Banaan","Avocado","Kiwi","Passievrucht","Selderij","Knoflook","Mosterdzaden","Anijszaad","Kamille","Vis","Schelpdieren","Koemelk","Tarwe","Soja","Pinda’s","Boomnoten", "Eieren"]

puts "this works aswell"
allergies.each do |allergy|
  Allergy.create!(name: allergy)
end

puts "it doesn't break here"



