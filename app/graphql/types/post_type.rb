module Types
  class PostType < Types::BaseObject
    field :id, ID, null: false
    field :title, String, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: true   # References: https://stackoverflow.com/questions/47960194/graphql-ruby-date-or-datetime-type
    # field :created_at, String, null: false
    # field :created_at_part, Integer, null: true do
    #   argument :unit, Integer, required: false, default_value: 123
    # end
    # field :created_at_part, resolver:CreatedAtPartDay  ########## CRIAR CLASSE PARA ESSE RESOLVER. https://hashrocket.com/blog/posts/graphql-way-limited-edition
  end
end
