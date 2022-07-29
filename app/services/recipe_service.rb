class RecipeService
  def self.connection
    conn = Faraday.new(url: 'https://api.spoonacular.com')
  end

  def self.get_recipes(food)
    ingredients = food.map do |f|
      f.name
    end.join(',')
    response = connection.get("/recipes/findByIngredients?ingredients=#{ingredients}") do |faraday|
      faraday.params['number'] = 10
      faraday.params['apiKey'] = ENV['recipe_api_key']
    end
  JSON.parse(response.body, symbolize_headers: true)
  end

  def self.get_recipe_url(id)
    response = connection.get("/recipes/#{id}/information") do |faraday|
      faraday.params['includeNutrition'] = false
      faraday.params['apiKey'] = ENV['recipe_api_key']
    end
   JSON.parse(response.body, symbolize_headers: true)
  end
end
