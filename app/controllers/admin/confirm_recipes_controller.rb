module Admin
  class ConfirmRecipesController < BaseController
    def index
      @recipes = Recipe.to_accept
    end

    def create
      @recipe = Recipe.find(params[:id]).update(accept: true)
      redirect_to admin_confirm_recipes_path, notice: "Recipe accepted"
    end

    def destroy
      @recipe = Recipe.find(params[:id]).destroy
      redirect_to admin_confirm_recipes_path, notice: "Recipe deleted"
    end
  end
end