require 'rails_helper'

RSpec.describe "task_items/edit", :type => :view do
  before(:each) do
    @task_item = assign(:task_item, TaskItem.create!(
      :name => "MyString",
      :user_id => 1
    ))
  end

  it "renders the edit task_item form" do
    render

    assert_select "form[action=?][method=?]", task_item_path(@task_item), "post" do

      assert_select "input#task_item_name[name=?]", "task_item[name]"

      assert_select "input#task_item_user_id[name=?]", "task_item[user_id]"
    end
  end
end
