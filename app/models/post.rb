class Post < ApplicationRecord
  has_many :comments
  def created_at_part(unit: String)
    if unit == 'day'
      created_at.day.to_s
    else
      created_at.year
    end
  end 
end
