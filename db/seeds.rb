# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# create ingredients
# require 'open-uri'

# url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
# hash_drinks = JSON.parse(open(url).read)
# ingredients = hash_drinks["drinks"]
# # puts ingredients.sample["strIngredient1"]
# 50.times do
#   Ingredient.create(
#     name: ingredients.sample["strIngredient1"]
#     )
# end

list = [ "irish whiskey", "scotch whisky", "bourbon", "milk", "mint leafs", "ice", "peaches", "sugar", "ginger ale", "lemon juice", "Grand Marnier", "Vermouth rosso", "Angostura", "orange juice", "ginger beer", "peach Schnaps", "breakfast tea", "raspberry jam", "apple juice", "honey sirup", "Vermouth blanco"]
list.each do |v|
 Ingredient.create(name: v)
end


# Cocktail.create(name: "Cuba Libre")
# Cocktail.create(name: "Moonlighty")

# Dose.create(
#   description: "4cl de Rhum",
#   cocktail_id: 1,
#   ingredient_id: 9,
#   )

# Dose.create(
#   description: "6cl de 7-Up",
#   cocktail_id: 1,
#   ingredient_id: 2,
#   )
