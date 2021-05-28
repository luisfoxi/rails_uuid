module Mutations
  class CreatePost < Mutations::BaseMutation
    field :post, Types::PostType, null: true

    argument :attributes, Types::Input::PostInput, required: false

    def resolve(attributes:)
      model = Post.new(attributes.to_h)

      if model.save
        {post: model}
      else
        model_errors!(model)
      end
    end
  end
end