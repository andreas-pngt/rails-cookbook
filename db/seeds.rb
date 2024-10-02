require "json"
require "open-uri"

puts "Cleaning the Database...."
Bookmark.destroy_all
Recipe.destroy_all
Category.destroy_all

puts "Creating recipes...."

categories = ["Breakfast", "Pasta", "Seafood", "Dessert"]

def recipe_builder(id)
  url = "https://www.themealdb.com/api/json/v1/1/lookup.php?i=#{id}"
  meal_serialized = URI.open(url).read
  meal = JSON.parse(meal_serialized)["meals"][0]

  Recipe.create!(
    name: meal ["strMeal"],
    description: meal["strInstructions"],
    image_url: meal["strMealThumb"],
    rating: rand(2..5.0).round(1)
  )
end

categories.each do |category|
  url = "https://www.themealdb.com/api/json/v1/1/filter.php?c=#{category}"
  recipes_serialized = URI.open(url).read
  recipes = JSON.parse(recipes_serialized)
  recipes["meals"].take(5).each do |recipe|
    recipe_builder(recipe["idMeal"])
  end
end
