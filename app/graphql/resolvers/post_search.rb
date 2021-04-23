module Resolvers
  class PostSearch < Resolvers::BaseSearchResolver
    type [Types::PostType], null: false
    description "Lists posts"

    scope { Post.all }
  
    option(:id, type: String)   { |scope, value| scope.where id: value }
    option(:title, type: String)   { |scope, value| scope.where title: value }
    option(:created_at, type: GraphQL::Types::ISO8601DateTime)   { |scope, value| scope.where created_at: value }
    option(:updated_at, type: GraphQL::Types::ISO8601DateTime)   { |scope, value| scope.where updated_at: value }
  
    def resolve
      []
    end

  end
end