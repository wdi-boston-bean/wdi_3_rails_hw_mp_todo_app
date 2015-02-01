class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.belongs_to :category, index: true
      t.decimal :amount

      t.timestamps null: false
    end
    add_foreign_key :transactions, :categories
  end
end