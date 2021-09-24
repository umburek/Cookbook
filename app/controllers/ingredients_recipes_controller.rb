class IngredientsRecipe < ApplicationController
  def index
    @ingredients_recipe = Recipe.all
  end
end