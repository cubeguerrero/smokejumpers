module Types
  class TeamType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :federation, Types::FederationType, null: false
    field :area, Types::AreaType, null: false
  end
end
