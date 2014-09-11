require 'rails_helper'

RSpec.describe "task_items/new", :type => :view do
  before(:each) do
    assign(:task_item, TaskItem.new(
      :name => "MyString",
      :user_id => 1
    ))
  end

  it "renders new task_item form" do
    render

    assert_select "form[action=?][method=?]", task_items_path, "post" do

      assert_select "input#task_item_name[name=?]", "task_item[name]"

      assert_select "input#task_item_user_id[name=?]", "task_item[user_id]"
    end
  end
end
