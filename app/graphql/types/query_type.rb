module Types
  class QueryType < Types::BaseObject
    field :federations,
          [Types::FederationType],
          null: false,
          description: "Returns a list of federations in the database."
    def federations
      Federation.all
    end

    field :teams,
          [Types::TeamType],
          null: false,
          description: "Returns a list of federations in the database."
    def teams
      Team.all
    end

    field :areas,
          [Types::AreaType],
          null: false,
          description: "Returns a list of areas in the database."
    def areas
      Area.all
    end

    field :members,
          [Types::MemberType],
          null: false,
          description: "Returns a list of smokejumpers."
    def members
      Member.all
    end
  end
end
