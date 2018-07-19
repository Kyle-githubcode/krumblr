require 'rails_helper'

RSpec.describe "users/index", type: :view do
  before(:each) do
    assign(:users, [
      User.create!(name:'test', email: 'test', password:'test', password_confirmation:'test'),
      User.create!(name:'test2', email: 'test2', password:'test2', password_confirmation:'test2')
    ])
  end

  it "renders a list of users" do
    render
  end
end
