require 'rails_helper'

RSpec.describe "transactions/index", :type => :view do
  before(:each) do
    assign(:transactions, [
      Transaction.create!(
        :from_acc => 1,
        :to_acc => 2,
        :amount => 1.5,
        :desc => "Desc",
        :is_to_to => false
      ),
      Transaction.create!(
        :from_acc => 1,
        :to_acc => 2,
        :amount => 1.5,
        :desc => "Desc",
        :is_to_to => false
      )
    ])
  end

  it "renders a list of transactions" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "Desc".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
