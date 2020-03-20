class Ingredient < ApplicationRecord
    has_many :allergies
    has_many :users, through: :allergies
    has_many :ingredient_recipes
    has_many :recipes, through: :ingredient_recipes
end
