class Recipe < ApplicationRecord
  has_many :ingredients_recipes
  has_many :ingredients, through: :ingredients_recipes
  belongs_to :user, optional: true
  accepts_nested_attributes_for :ingredients_recipes
end
