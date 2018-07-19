require 'rails_helper'

RSpec.describe "blogs/show", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(name:'test', email: 'test', password:'test', password_confirmation:'test'))
    @category = assign(:category, Category.create!(name: 'test'))
    @blog = assign(:blog, Blog.create!(title: 'test', user_id: @user.id, category_id: @category.id))
  end

  it "renders attributes in <p>" do
    render
  end
end
