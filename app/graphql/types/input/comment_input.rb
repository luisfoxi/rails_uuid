module Types
  module Input
    class CommentInput < Types::BaseInputObject
      field :body, String, null: true
    end
  end
end