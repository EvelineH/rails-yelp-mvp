# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts 'Creating restaurants...'

choux = { name: 'Choux', address: 'De Ruijterkade 128, 1011 AC Amsterdam', category: 'french'}
bar_centraal = { name: 'Bar Centraal', address: 'Ten Katestraat 16, 1053 CE Amsterdam', category: 'french' }
pazzi = { name: 'Pazzi', address: 'De Clercqstraat 93III, 1053 AG Amsterdam', category: 'italian' }
wolf = { name: 'Cafe Wolf', address: 'Wolvenstraat 22, 1016 EP Amsterdam', category: 'french' }
taste_of_culture = { name: 'Taste of Culture', address: 'Korte Leidsedwarsstraat 139-141, 1017 PZ Amsterdam',
                     category: 'chinese' }

restaurants = [choux, bar_centraal, pazzi, wolf, taste_of_culture]

restaurants.each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished'
