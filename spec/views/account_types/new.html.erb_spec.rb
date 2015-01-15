require 'rails_helper'

RSpec.describe "account_types/new", :type => :view do
  before(:each) do
    assign(:account_type, AccountType.new(
      :name => "MyString",
      :lhs_attr => false,
      :rhs_attr => false,
      :plus_attr => false,
      :minus_attr => false
    ))
  end

  it "renders new account_type form" do
    render

    assert_select "form[action=?][method=?]", account_types_path, "post" do

      assert_select "input#account_type_name[name=?]", "account_type[name]"

      assert_select "input#account_type_lhs_attr[name=?]", "account_type[lhs_attr]"

      assert_select "input#account_type_rhs_attr[name=?]", "account_type[rhs_attr]"

      assert_select "input#account_type_plus_attr[name=?]", "account_type[plus_attr]"

      assert_select "input#account_type_minus_attr[name=?]", "account_type[minus_attr]"
    end
  end
end
