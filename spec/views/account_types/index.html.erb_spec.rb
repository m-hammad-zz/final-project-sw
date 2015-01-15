require 'rails_helper'

RSpec.describe "account_types/index", :type => :view do
  before(:each) do
    assign(:account_types, [
      AccountType.create!(
        :name => "Name",
        :lhs_attr => false,
        :rhs_attr => false,
        :plus_attr => false,
        :minus_attr => false
      ),
      AccountType.create!(
        :name => "Name",
        :lhs_attr => false,
        :rhs_attr => false,
        :plus_attr => false,
        :minus_attr => false
      )
    ])
  end

  it "renders a list of account_types" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
