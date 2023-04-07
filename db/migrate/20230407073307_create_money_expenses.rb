class CreateMoneyExpenses < ActiveRecord::Migration[7.0]
  def change
    create_table :money_expenses do |t|
      t.integer :price, limit: 1
      t.text :category
      t.text :comment

      t.timestamps
    end
  end
end
