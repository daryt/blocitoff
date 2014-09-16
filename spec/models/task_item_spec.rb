require 'rails_helper'

RSpec.describe TaskItem, :type => :model do
  before(:each) do
    @user = User.create(email: 'test@testing.com', password: 'ACDCBNB!!')
    @todo_item = TaskItem.create(user_id: @user.id, name: 'test task');
    @user.save!
    @todo_item.save!

    @user2 = User.create(email: 'test2@testing.com', password: 'ACDCBNB!!')
    @todo_item2 = TaskItem.create(user_id: @user2.id, name: 'test task');
    @user2.save!
    @todo_item2.save!
  end
  
  it "will grab a certain user's tasks" do
    expect(TaskItem.mine(@user.id).first).to eq(@todo_item)
  end
end
