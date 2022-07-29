class ItemSerializer
  include JSONAPI::Serializer
  attributes :name, :expiration
end
