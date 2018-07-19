require 'rails_helper'

RSpec.describe "blogs/index", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(name:'test', email: 'test', password:'test', password_confirmation:'test'))
    @category = assign(:category, Category.create!(name: 'test'))
    assign(:blogs, [
      Blog.create!(title: 'test', user_id: @user.id, category_id: @category.id),
      Blog.create!(title: 'test2', user_id: @user.id, category_id: @category.id)
    ])
  end

  it "renders a list of blogs" do
    render
  end
end
