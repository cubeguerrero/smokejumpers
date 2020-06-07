module Types
  class MemberType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :age, Int, null: false
    field :bio, String, null: false
    field :team, Types::TeamType, null: false
  end
end
