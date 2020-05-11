class SerializableFederation < JSONAPI::Serializable::Resource
  type 'federations'
  attributes :name, :description
end