class SerializableArea < JSONAPI::Serializable::Resource
  type 'areas'

  attributes :name

  has_many :teams
  has_many :federations
end
