class TaskItem < ActiveRecord::Base
  belongs_to :user

   def days_left
    7 - (Time.now.day - created_at.day)
  end

end
