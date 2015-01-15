class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.integer :from_acc
      t.integer :to_acc
      t.float :amount
      t.date :date
      t.string :desc
      t.boolean :is_to_to

      t.timestamps
    end
  end
end
