class GrocerySerializer
  include JSONAPI::Serializer
  attributes :id, :name
end
