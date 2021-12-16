class HomeController < ApplicationController
  def index
    @q = Recipe.ransack(params[:q])
    @recipes = @q.result(distinct: true)
    @current_user = current_user
  end
end