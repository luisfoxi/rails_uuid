class Post < ApplicationRecord
  has_many :comments
  def created_at_part(**part)
    case part[:part]
    when 'day'
      return created_at.day
    when 'month'
      return created_at.month
    when 'year'
      return created_at.year
    else
      return created_at.to_s
    end
  end 
end
