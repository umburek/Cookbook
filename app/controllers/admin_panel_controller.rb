class AdminPanelController < ApplicationController
  def index
    @recipes = Recipe.all
    @recipes_to_accept = Recipe.where(user_id: nil)
  end
end