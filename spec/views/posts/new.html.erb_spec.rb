require 'rails_helper'

RSpec.describe "posts/new", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(name:'test', email: 'test', password:'test', password_confirmation:'test'))
    @category = assign(:category, Category.create!(name: 'test'))
    @blog = assign(:blog, Blog.create!(title: 'test', user_id: @user.id, category_id: @category.id))
    assign(:post, Post.new(content: 'test', blog_id:@blog.id, user_id: @user.id))
  end

  it "renders new post form" do
    render

    assert_select "form[action=?][method=?]", posts_path, "post" do
    end
  end
end
