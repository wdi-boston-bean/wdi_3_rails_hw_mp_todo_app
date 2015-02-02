class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.belongs_to :transaction, index: true
      t.text :body

      t.timestamps null: false
    end
    add_foreign_key :comments, :transactions
  end
end
