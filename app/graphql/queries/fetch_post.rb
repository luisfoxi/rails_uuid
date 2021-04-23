module Queries
  class FetchPost < Queries::BaseQuery
    type Types::PostType, null: false
    argument :id, ID, required: false
    argument :title, String, required: false

    def resolve(id:)
      Post.find(id)
    rescue ActiveRecord::RecordNotFound => _e
      GraphQL::ExecutionError.new('Post does not exist.')
    rescue ActiveRecord::RecordInvalid => e
      GraphQL::ExecutionError.new("Invalid attributes for #{e.record.class}:"\
        " #{e.record.errors.full_messages.join(', ')}")
    end

    def resolve(title:)
      Post.find_by(title: title)
    rescue ActiveRecord::RecordNotFound => _e
      GraphQL::ExecutionError.new('Post does not exist.')
    rescue ActiveRecord::RecordInvalid => e
      GraphQL::ExecutionError.new("Invalid attributes for #{e.record.class}:"\
        " #{e.record.errors.full_messages.join(', ')}")
    end
  end
end