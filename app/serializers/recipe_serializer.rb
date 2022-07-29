class RecipeSerializer
  include JSONAPI::Serializer
  attributes :id, :title, :image, :missedIngredientCount, :usedIngredientCount
end
