class SerializableMember < JSONAPI::Serializable::Resource
  type "members"

  attributes :name, :age, :bio

  belongs_to :team
end
