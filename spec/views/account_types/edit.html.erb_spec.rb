require 'rails_helper'

RSpec.describe "account_types/edit", type: :view do
  before(:each) do
    @account_type = assign(:account_type, AccountType.create!())
  end

  it "renders the edit account_type form" do
    render

    assert_select "form[action=?][method=?]", account_type_path(@account_type), "post" do
    end
  end
end
