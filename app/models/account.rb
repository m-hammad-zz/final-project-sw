class Account < ActiveRecord::Base
  attr_accessible :name, :account_type_id
  belongs_to :account_type
  has_many :transactions

end
