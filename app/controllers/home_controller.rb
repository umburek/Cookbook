class HomeController < ApplicationController
  def index
    @recipe = Recipe.all
    @current_user = current_user
  end
end