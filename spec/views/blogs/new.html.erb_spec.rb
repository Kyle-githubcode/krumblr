require 'rails_helper'

RSpec.describe "blogs/new", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(name:'test', email: 'test', password:'test', password_confirmation:'test'))
    @category = assign(:category, Category.create!(name: 'test'))
    assign(:blog, Blog.new(title: 'test', user_id: @user.id, category_id: @category.id))
  end

  it "renders new blog form" do
    render

    assert_select "form[action=?][method=?]", blogs_path, "post" do
    end
  end
end
