class ConfirmRecipeController < ApplicationController
  def create
    @recipe = Recipe.find(params[:id])
    @recipe.update_attribute(accept: true)
    redirect_to admin_panel_index_path, action: :create, controller: 'confirm_recipe', notice: "Recipe accepted"
  end
end
