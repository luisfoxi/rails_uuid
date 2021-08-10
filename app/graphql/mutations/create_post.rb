module Mutations
  class CreatePost < Mutations::BaseMutation
    field :post, Types::PostType, null: true
    argument :attributes, Types::Input::PostInput, required: true

    def resolve(attributes:)
      puts "1=================================================================="
      puts attributes
      puts "2=================================================================="
      puts attributes.to_h
      puts "3=================================================================="
      
      model = Post.new(attributes.to_h)

      if model.save
        {post: model}
      else
        model_errors!(model)
      end
    end
  end
end

# https://medium.com/quick-code/working-with-arrays-in-graphql-ruby-d3321fb7a910