module Types
  class MemberType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :age, Int, null: false
    field :bio, String, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: true
    field :team, Types::TeamType, null: false
  end
end
