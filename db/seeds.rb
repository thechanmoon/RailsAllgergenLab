# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Recipe.destroy_all
Ingredient.destroy_all
IngredientRecipe.destroy_all

10.times do 
    # User.create(name: Faker::Name.name, age: Faker::Number.number(digits: 2))
    User.create(name: Faker::Name.name, age: Faker::Number.between(from: 10, to: 100) )
    # User.create(name: Faker::Name.name, age: rand(1..50))
    
end

10.times do 
    Recipe.create(name: Faker::Food.spice, user_id: User.all.sample.id)
end


10.times do
    Ingredient.create(content: Faker::Food.ingredient)
end

10.times do
    IngredientRecipe.create(recipe_id:Recipe.all.sample.id,ingredient_id:Ingredient.all.sample.id)
end

# u1 = User.create(name:"Laura",age:70)
# u2 = User.create(name:"Spencer",age:55)
# u3 = User.create(name:"Brian",age:11)

# r1 = Recipe.create(name:"Fired potatoes",user_id:u1.id)
# r2 = Recipe.create(name:"Latkes",user_id:u2.id)
# r3 = Recipe.create(name:"Pancakes",user_id:u3.id)

# i1 = Ingredient.create(content:"Potato")
# i2 = Ingredient.create(content:"Flour")
# i3 = Ingredient.create(content:"Butter")
# i4 = Ingredient.create(content:"Oil")

# IngredientRecipe.create(recipe_id:r1.id,ingredient_id:i1.id)
# IngredientRecipe.create(recipe_id:r2.id,ingredient_id:i1.id)
# IngredientRecipe.create(recipe_id:r3.id,ingredient_id:i2.id)
# IngredientRecipe.create(recipe_id:r3.id,ingredient_id:i4.id)
# IngredientRecipe.create(recipe_id:r2.id,ingredient_id:i4.id)
# IngredientRecipe.create(recipe_id:r1.id,ingredient_id:i3.id)

