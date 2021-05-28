module Mutations
  class DeletePost < Mutations::BaseMutation
    field :post, Types::PostType, null: true

    argument :id, String, required: true

    def resolve(id:)
      model = Post.find(id)

      model.destroy
      {post: model}
    end
  end
end