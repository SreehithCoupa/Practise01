require 'rails_helper'

RSpec.describe "tasks/index", type: :view do

  it "renders all the tasks" do
    assign(:tasks,[
      Task.create!(:name => 'Anything'),
      Task.create!(:name => 'Nothing')
    ])
    render

    expect(rendered).to match(/Anything/)
    expect(rendered).to match(/Nothing/)
  end
end
