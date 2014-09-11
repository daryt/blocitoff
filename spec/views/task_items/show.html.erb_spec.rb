require 'rails_helper'

RSpec.describe "task_items/show", :type => :view do
  before(:each) do
    @task_item = assign(:task_item, TaskItem.create!(
      :name => "Name",
      :user_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/1/)
  end
end
