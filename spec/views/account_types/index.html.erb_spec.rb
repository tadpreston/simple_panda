require 'rails_helper'

RSpec.describe "account_types/index", type: :view do
  before(:each) do
    assign(:account_types, [
      AccountType.create!(),
      AccountType.create!()
    ])
  end

  it "renders a list of account_types" do
    render
  end
end
