class IngredientsRecipe < ActiveRecord::Base
  belongs_to :ingredient
  belongs_to :recipe
  has_many_attached :photos
end