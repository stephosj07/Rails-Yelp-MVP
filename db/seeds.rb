
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
napoli_mia = { name: "Napoli Mia",
               address: "133 route de Lyon, 84000 Avignon",
               phone_number: "+33 4 90 25 51 25",
               category: "italian" }

brasserie_paul_bert = { name: "Brasserie Paul Bert",
               address: "20 rue du Marais, 75004 Paris",
               phone_number: "+33 4 32 26 66 40",
               category: "french" }

salakha = { name: "Salakha",
               address: "4 route du Pont Daladier, 30133 Les Angles",
               phone_number: "+33 4 90 25 99 01",
               category: "chinese" }

mitsuko = { name: "Mitsuko",
               address: "56 rue d'Amsterdam, 75009 Paris",
               phone_number: "+33 4 31 34 55 00",
               category: "japanese" }

clan_des_belges = { name: "Clan des Belges",
               address: "18 rue Saint-Boniface, 1050 Ixelles",
               phone_number: "+32 3 21 19 04 32",
               category: "belgian" }


[ napoli_mia, brasserie_paul_bert, salakha, mitsuko, clan_des_belges ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
