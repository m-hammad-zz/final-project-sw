require 'rails_helper'

RSpec.describe "transactions/edit", :type => :view do
  before(:each) do
    @transaction = assign(:transaction, Transaction.create!(
      :from_acc => 1,
      :to_acc => 1,
      :amount => 1.5,
      :desc => "MyString",
      :is_to_to => false
    ))
  end

  it "renders the edit transaction form" do
    render

    assert_select "form[action=?][method=?]", transaction_path(@transaction), "post" do

      assert_select "input#transaction_from_acc[name=?]", "transaction[from_acc]"

      assert_select "input#transaction_to_acc[name=?]", "transaction[to_acc]"

      assert_select "input#transaction_amount[name=?]", "transaction[amount]"

      assert_select "input#transaction_desc[name=?]", "transaction[desc]"

      assert_select "input#transaction_is_to_to[name=?]", "transaction[is_to_to]"
    end
  end
end
