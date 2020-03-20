class RecipesController < ApplicationController

  def index
    @recipes = Recipe.all

  end

  def search
    puts "test"
    @ing_count = Recipe.all.map do |recipe|
      recipe.ingredients.count
      end

    render :index
  end


  def show
    @recipe = Recipe.find(params[:id])
  end

  def new
    @recipe = Recipe.new
  end

  # def create
  #   @recipe = Recipe.create(recipe_params)
  #    redirect_to recipe_path(@recipe)
  # end

  def create
    @recipe = Recipe.create(recipe_params)
    if @recipe.valid?
        @recipe.save
        redirect_to recipe_path(@recipe)
    else
    flash[:message] ="yo recipe ain't right"
    redirect_to new_recipe_path
    end
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def update
    @recipe = Recipe.find(params[:id])
    # @recipe.update(params.require(:recipe).permit(:name, :user_id))
    @recipe.update(recipe_params)

    if @recipe.valid?
      redirect_to @recipe
    else
      flash[:message] ="yo recipe ain't right"
      render :edit
    end
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
    redirect_to recipes_path
  end

  private

    def recipe_params
      params.require(:recipe).permit(:name, :user_id)
    end
end
