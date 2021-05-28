module Mutations
  class UpdatePost < Mutations::BaseMutation
    field :post, Types::PostType, null: true

    argument :id, String, required: true
    argument :attributes, Types::Input::PostInput, required: true
    
    def resolve(attributes:, id:)
      model = Post.find(id)

      if model.update(attributes.to_h)
        {post: model}
      else
        model_errors!(model)
      end
    end
  end
end