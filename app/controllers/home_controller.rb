class HomeController < ApplicationController
  def index
    @q = Recipe.all.where(accept: true).order(name: :desc).ransack(params[:q])
    @recipes = @q.result(distinct: true)
    @recipes_last5 = Recipe.all.where(accept: true).last(5)
    @current_user = current_user
  end
end