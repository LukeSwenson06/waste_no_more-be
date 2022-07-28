class RecipeService
  def self.connection
    conn = Faraday.new(url: 'https://api.spoonacular.com')
  end

  def self.get_recipe_by_ingredients(food)
    response = connection.get("/recipes/findByIngredients?ingredients=#{food}") do |faraday|
      faraday.params['number'] = 10
      faraday.params['apiKey'] = ENV['recipe_api_key']
    end
   JSON.parse(response.body, symbolize_headers: true)
  end
end
