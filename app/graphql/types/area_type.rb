module Types
  class AreaType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :teams, [Types::TeamType], null: true
  end
end
