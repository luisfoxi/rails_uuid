class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  # Sort records by date of creation instead of primary key
  self.implicit_order_column = :created_at

  before_create -> { self.id = SecureRandom.uuid }
end
