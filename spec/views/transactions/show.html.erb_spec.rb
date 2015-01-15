require 'rails_helper'

RSpec.describe "transactions/show", :type => :view do
  before(:each) do
    @transaction = assign(:transaction, Transaction.create!(
      :from_acc => 1,
      :to_acc => 2,
      :amount => 1.5,
      :desc => "Desc",
      :is_to_to => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/Desc/)
    expect(rendered).to match(/false/)
  end
end
