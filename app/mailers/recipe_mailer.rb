class RecipeMailer < ApplicationMailer
  def recipe_created
    @user = params[:user]
    @recipe = params[:recipe]

    mail(to: @user.email, subject: "You added a new recipe.")
  end
end
