# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Cleaning the Database...."
Bookmark.destroy_all
Recipe.destroy_all


puts "Creating recipes...."

 Recipe.create!(
  name: "Spaghetti Carbonara",
  description: "Spaghetti, Eggs, Pancetta, Parmesan, Black Pepper",
  image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/3/33/Espaguetis_carbonara.jpg/1024px-Espaguetis_carbonara.jpg",
  rating: 3.5
 )

 Recipe.create!(
  name: "Chicken Stir Fry",
  description: "Chicken, Broccoli, Soy Sauce, Garlic, Ginger, Bell Peppers",
  image_url: "https://www.allrecipes.com/thmb/wbWfb-cXCq1yd6NlpJR7z5Nr1Wc=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/240708-broccoli-and-chicken-stir-fry-DDMFS-4x3-27886203cb2744f99d15247496019942.jpg",
  rating: 4
)

Recipe.create!(
  name: "Vegetable Curry",
  description: "Potatoes, Carrots, Coconut Milk, Curry Powder, Onions, Garlic",
  image_url: "https://simply-delicious-food.com/wp-content/uploads/2020/09/Creamy-vegetable-curry-4.jpg",
  rating: 3
)

Recipe.create!(
  name: "Chocolate Brownies",
  description: "Butter, Sugar, Cocoa Powder, Eggs, Flour",
  image_url: "https://images.unsplash.com/photo-1461009312844-e80697a81cc7?q=80&w=1988&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  rating: 4
)

puts "Done! #{Recipe.all.count} recipes created!"
