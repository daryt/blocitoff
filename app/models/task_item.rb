class TaskItem < ActiveRecord::Base
  belongs_to :user

   def days_left
    7 - (Time.now.day - created_at.day)
  end

  def self.mine(user_id)
    all.where(user_id: user_id)
  end

end
