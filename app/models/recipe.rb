class Recipe < ApplicationRecord
  has_many :recipe_ingredients
  has_many :ingredients, through: :recipe_ingredients
  belongs_to :user, optional: true
  accepts_nested_attributes_for :recipe_ingredients
end
