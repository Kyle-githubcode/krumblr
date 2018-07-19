require 'rails_helper'

RSpec.describe "blogs/edit", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(name:'test', email: 'test', password:'test', password_confirmation:'test'))
    @category = assign(:category, Category.create!(name: 'test'))
    @blog = assign(:blog, Blog.create!(title: 'test', user_id: @user.id, category_id: @category.id))
  end

  it "renders the edit blog form" do
    render

    assert_select "form[action=?][method=?]", blog_path(@blog), "post" do
    end
  end
end
