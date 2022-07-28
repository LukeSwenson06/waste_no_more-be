require 'rails_helper'

RSpec.describe 'RecipeService' do
  it "can retrieve data and parses response for ingredients connection", :vcr do
    parsed_json = RecipeService.get_recipe_by_ingredients('milk,+eggs')

    expect(parsed_json).to be_a Array
    recipe = parsed_json.first

    expect(recipe).to include("id", "title", "image", "imageType", "usedIngredientCount", "missedIngredientCount", "missedIngredients")
    expect(recipe).to be_a Hash
  end

  it "can retrieve data and parses response for searching recipe by id" do
    parsed_json = RecipeService.get_recipe_details(991625)

    expect(parsed_json).to be_a Array
    recipe = parsed_json.first
    expect(recipe).to include("id", "title", "sourceUrl")
    expect(recipe).to be_a Hash
  end
end
