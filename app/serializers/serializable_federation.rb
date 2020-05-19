class SerializableFederation < JSONAPI::Serializable::Resource
  type 'federations'

  attributes :name, :description

  has_many :teams
  has_many :areas
end
