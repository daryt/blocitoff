require 'rails_helper'

RSpec.describe "TaskItems", :type => :request do
  describe "GET /task_items" do
    it "works! (now write some real specs)" do
      get task_items_path
      expect(response.status).to be(200)
    end
  end
end
