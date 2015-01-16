# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Initial Data
# Account Types
# AccountType.create(name: 'Asset', lhs_attr: true, rhs_attr: false, plus_attr: true, minus_attr:false)
# AccountType.create(name: 'Liability', lhs_attr: true, rhs_attr: false, plus_attr: false, minus_attr:true)
# AccountType.create(name: 'Expense', lhs_attr: false, rhs_attr: true, plus_attr: false, minus_attr:true)
# AccountType.create(name: 'Equity', lhs_attr: false, rhs_attr: true, plus_attr: true, minus_attr:false)

# Accounts
# Account.create(name: 'Cash', account_type_id: 1)
# Account.create(name: 'Bank', account_type_id: 1)
# Account.create(name: 'Office Expenses', account_type_id: 3)
# Account.create(name: 'Capital', account_type_id: 4)

# TXNs
# Transaction.create(from_acc: 2, to_acc: 1, amount: 4000, date: '2015-01-15', desc: 'Cash withdrawal', is_to_to: false)


