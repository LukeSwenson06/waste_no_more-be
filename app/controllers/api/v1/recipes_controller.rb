class Api::V1::RecipesController < ApplicationController
  def show
    # render json: RecipeSerializer.new(RecipeService.get_recipes(User.find(params[:id]).items))
    binding.pry
    render json: RecipeService.get_recipes(User.find(params[:id]).items)
  end
end
