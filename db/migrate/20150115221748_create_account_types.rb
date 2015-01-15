class CreateAccountTypes < ActiveRecord::Migration
  def change
    create_table :account_types do |t|
      t.string :name
      t.boolean :lhs_attr
      t.boolean :rhs_attr
      t.boolean :plus_attr
      t.boolean :minus_attr

      t.timestamps
    end
  end
end
