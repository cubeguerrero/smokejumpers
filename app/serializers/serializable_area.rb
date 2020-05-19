class SerializableArea < JSONAPI::Serializable::Resource
  type 'areas'

  attributes :name

  has_many :teams
end
