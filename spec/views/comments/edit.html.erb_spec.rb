require 'rails_helper'

RSpec.describe "comments/edit", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(name:'test', email: 'test', password:'test', password_confirmation:'test'))
    @category = assign(:category, Category.create!(name: 'test'))
    @blog = assign(:blog, Blog.create!(title: 'test', user_id: @user.id, category_id: @category.id))
    @post = assign(:post, Post.create!(content: 'test', blog_id:@blog.id, user_id: @user.id))
    @comment = assign(:comment, Comment.create!(content: 'test', post_id: @post.id, user_id: @user.id))
  end

  it "renders the edit comment form" do
    render

    assert_select "form[action=?][method=?]", comment_path(@comment), "post" do
    end
  end
end
