class RecipesController < ApplicationController
  before_action :set_recipe, only: %i[ show edit update destroy ]
  before_action :correct_user, only: [:edit, :update, :destroy]

  # GET /recipes or /recipes.json
  def index
    @recipes = current_user.recipes
    @user_email = current_user.email
    authorize @recipes
  end

  # GET /recipes/1 or /recipes/1.json
  def show
  end

  # GET /recipes/new
  def new
    @recipe = Recipe.new(
      user_id: current_user&.id,
      accept: current_user.present?
    )
    20.times { @recipe.recipe_ingredients.build }
  end

  # GET /recipes/1/edit
  def edit
  end

  # POST /recipes or /recipes.json
  def create
    if current_user.nil?
      @recipe = Recipe.new(recipe_params)
    else
      @recipe = current_user.recipes.build(recipe_params.merge!(accept: true))
    end
    respond_to do |format|
      if @recipe.save
        format.html { redirect_to @recipe, notice: "Recipe was successfully created." }
        format.json { render :show, status: :created, location: @recipe }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @recipe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recipes/1 or /recipes/1.json
  def update
    respond_to do |format|
      if @recipe.update(recipe_params)
        format.html { redirect_to @recipe, notice: "Recipe was successfully updated." }
        format.json { render :show, status: :ok, location: @recipe }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @recipe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recipes/1 or /recipes/1.json
  def destroy
    @recipe = current_user.recipes.find(params[:id])
    @recipe.destroy
    respond_to do |format|
      format.html { redirect_to recipes_url, notice: "Recipe was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def correct_user
    @recipe = current_user.recipes.find_by(id: params[:id])
    redirect_to recipes_path, notice: "Not Authorized To Edit This Recipe" if @recipe.nil?
  end

  def search
    # if params[:search].blank?
    #   redirect_to recipes_path and return
    # else
    #   @parameter = params[:search].downcase
    #   @results = Recipe.all.where("lower(name) LIKE :search", search: "%#{@parameter}%")
    # end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_recipe
    @recipe = Recipe.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def recipe_params
    params.require(:recipe).permit(
      :ingredients,
      :preparation,
      :preparation_time,
      :name,
      recipe_ingredients_attributes: [:id, :quantity, :unit, :ingredient_id]
    )
  end
end
