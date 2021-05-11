module Types
  module Input
    class PostInput < Types::BaseInputObject
      field :title, String, null: true
      # field :title, String, null: true
    end
  end
end