class Post < ApplicationRecord
  has_many :comments
  def created_at_part(**part)
    puts part[:part]
    case part[:part]
    when 'day'
      created_at.day
      puts '1'
    when 'month'
      created_at.month
      puts '2'
    when 'year'
      created_at.year
      puts '3'
    else
      created_at.to_s
      puts '4'
    end
  end 
end
