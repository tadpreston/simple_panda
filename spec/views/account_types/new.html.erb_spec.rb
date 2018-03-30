require 'rails_helper'

RSpec.describe "account_types/new", type: :view do
  before(:each) do
    assign(:account_type, AccountType.new())
  end

  it "renders new account_type form" do
    render

    assert_select "form[action=?][method=?]", account_types_path, "post" do
    end
  end
end
