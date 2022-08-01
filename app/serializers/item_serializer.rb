class ItemSerializer
  include JSONAPI::Serializer
  attributes :name, :expiration, :days_til_expiration
end
