require 'rails_helper'

RSpec.describe Task, type: :model do

  context "attributes" do
    let(:task) {Task.new(name: "test",description: "testing a task",isCompleted: false, position: 1)}

    it "ensures task name is matched" do
      expect(task.name).to eql("test")
    end
    it "ensures task description is matched" do
      expect(task.description).to eql("testing a task")
    end
    it "ensures task position is matched" do
      expect(task.position).to eql(1)
    end
    it "ensures task status is matched" do
      expect(task.isCompleted).to be(false)
    end
  end

  context "validations test" do


    it "ensures task is able to save" do
      @task=Task.new
      expect(@task.save).to be(true)
    end

    # it "ensures task is not saved without name" do
    #   task=Task.new(description: "testing a task",isCompleted: false, position: 1)
    #   expect(task.save).to eql(false)
    # end

  end



  context "scopes test" do

    let(:params) { {name: "test",description: "testing a task",isCompleted: false} }

    before(:example) do
      Task.create(params)
      Task.create(params)
      Task.create(params.merge( isCompleted: true))
    end

    it "returns all tasks" do
      expect(Task.count).to eql(4)
    end


  end
end
