class AdminPanelController < ApplicationController
  def index
    @recipes = Recipe.all
    @recipe_to_accept = Recipe.where(user_id: nil, accept: false)
  end
end