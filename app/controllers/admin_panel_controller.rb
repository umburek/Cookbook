class AdminPanelController < ApplicationController
  def index
    @recipes = Recipe.all
    @recipes_to_accept = Recipe.where(user_id: nil, accept: false)
    @current_user = current_user
  end
end