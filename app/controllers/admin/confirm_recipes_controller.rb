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

    end
  end
end