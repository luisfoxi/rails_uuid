module Types
  module Input
    class PostInput < Types::BaseInputObject
      argument :title, String, required: true
      # argument :comments [Types::CommentType], required: false
    end
  end
end