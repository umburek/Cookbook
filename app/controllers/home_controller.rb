class HomeController < ApplicationController
  def index
    @recipes = Recipe.last(5)
    @current_user = current_user
  end
end
