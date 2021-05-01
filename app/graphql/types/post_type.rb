module Types
  class PostType < Types::BaseObject
    field :id, ID, null: false
    field :title, String, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: true   # References: https://stackoverflow.com/questions/47960194/graphql-ruby-date-or-datetime-type
    field :created_at, String, null: false

    def created_at(unit)
      if unid == 'day'
        created_at.day
      else
        created_at.to_s
      end
    end
  end
end
