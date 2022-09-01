require 'rails_helper'

RSpec.describe Category, type: :model do
  context "attributes" do
    let(:category) {Category.new(name: "test")}

    it "should match category name" do
      expect(category.name).to eql("test")
    end

  end

  context "validations test" do
    it "should able to save" do
      @category=Category.new
      expect(@category.save).to be(true)
    end
  end

  context "scopes test" do

    it "should return all categories created" do
      Category.create(name: "test1")
      Category.create(name: "test2")
      Category.create(name: "test3")

      expect(Category.count).to eql(3)

    end
  end
end
