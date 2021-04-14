module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # TODO: remove me
    field :test_field, String, null: false,
      description: "An example field added by the generator"
    def test_field
      "Hello World!"
    end

    field :all_posts, [PostType], null: false
    # this method is invoked, when `all_posts` fields is being resolved
    def all_posts
      Post.all
    end 

    field :fetch_post, resolver: Queries::FetchPost
  end
end
