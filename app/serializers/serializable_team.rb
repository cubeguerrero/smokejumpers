class SerializableTeam < JSONAPI::Serializable::Resource
  type 'teams'

  attributes :name

  belongs_to :federation
  belongs_to :area
end
