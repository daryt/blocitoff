require 'rails_helper'

RSpec.describe "task_items/index", :type => :view do
  before(:each) do
    assign(:task_items, [
      TaskItem.create!(
        :name => "Name",
        :user_id => 1
      ),
      TaskItem.create!(
        :name => "Name",
        :user_id => 1
      )
    ])
  end

  it "renders a list of task_items" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
