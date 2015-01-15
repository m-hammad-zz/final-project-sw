class Transaction < ActiveRecord::Base
  attr_accessible :from_acc, :to_acc, :amount, :date, :is_to_to, :desc
  belongs_to :account
end
