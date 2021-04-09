module Types
  class PostType < Types::BaseObject
    field :id, ID, null: false
    field :title, String, null: false
    # field :updated_at, TimeStamp, null: false
  end
end
