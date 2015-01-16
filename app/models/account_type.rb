class AccountType < ActiveRecord::Base
  # attr_accessor :name, :lhs_attr, :rhs_attr, :plus_attr, :minus_attr

  has_many :accounts

end
