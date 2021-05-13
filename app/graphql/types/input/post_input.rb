module Types
  module Input
    class PostInput < Types::BaseInputObject
      argument :title, String, required: true
    end
  end
end