require 'rails_helper'

RSpec.describe "categories/show", type: :view do
  before(:each) do
    @category = assign(:category, Category.create!(name: 'test'))
  end

  it "renders attributes in <p>" do
    render
  end
end
