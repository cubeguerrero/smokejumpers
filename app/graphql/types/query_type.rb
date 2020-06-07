module Types
  class QueryType < Types::BaseObject
    field :federations,
          [Types::FederationType],
          null: false,
          description: "Returns a list of federations in the database."
    def federations
      Federation.all
    end
  end
end
