require 'rails_helper'

RSpec.describe "tasks/show", type: :view do
  before(:each) do
    @task = assign(:task, Task.create!(
      header: "Header",
      description: "MyText",
      category: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Header/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
  end
end
