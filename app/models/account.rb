class Account < ActiveRecord::Base
  # attr_accessor :name, :account_type_id

  belongs_to :account_type

  has_many :from_transactions, class_name: 'Transaction', :foreign_key => :from_acc
  has_many :to_transactions, class_name: 'Transaction', :foreign_key => :to_acc

  # has_many :from_accounts, :through => :from_transactions
  # has_many :to_accounts, :through => :to_transactions

  def self.accountsWithTypes()

  end

end
