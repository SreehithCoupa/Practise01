require 'rails_helper'

RSpec.describe TasksController, type: :request do

  let(:task) {Task.all}
  describe "GET /index" do
    it "fetches all tasks successfully" do
      get '/tasks'

      # expect(assigns["tasks"]).to eq(task)
      expect(response).to have_http_status(200)

    end
    it "fetches desired task" do
      get '/tasks/89'

      expect(response).to have_http_status(200)
    end
  end

  describe "Post" do

      it "new task form" do
        get "/tasks/new"
        expect(response).to have_http_status(200)
      end

    end

end
