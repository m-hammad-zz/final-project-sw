FactoryGirl.define do
  factory :transaction do
    from_acc 1
to_acc 1
amount 1.5
date "2015-01-16"
desc "MyString"
is_to_to false
  end

end
