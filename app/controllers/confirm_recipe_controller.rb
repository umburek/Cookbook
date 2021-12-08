class ConfirmRecipeController < ApplicationController
  def update
    @recipes = Recipe.find(params[:id])
    @recipes.update_attributes(params[:recipe])
    redirect_to admin_panel_index_path, notice: "Recipe aproved"
  end
end
