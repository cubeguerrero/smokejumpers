class SerializableTeam < JSONAPI::Serializable::Resource
  type 'teams'

  attributes :name

  belongs_to :federation
end
