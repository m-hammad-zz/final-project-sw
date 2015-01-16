class Transaction < ActiveRecord::Base
  # attr_accessor :from_acc, :to_acc, :amount, :date, :is_to_to, :desc

  belongs_to :from_account, class_name: 'Account', :foreign_key => :from_acc
  belongs_to :to_account, class_name: 'Account', :foreign_key => :to_acc

end
