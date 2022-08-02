class ItemSerializer
  include JSONAPI::Serializer
  attributes :id, :name, :expiration, :days_til_expiration
end
