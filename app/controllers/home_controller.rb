class HomeController < ApplicationController
  def index
    @recipes = Recipe.last(5)
    @user_role = current_user.role
  end
end
