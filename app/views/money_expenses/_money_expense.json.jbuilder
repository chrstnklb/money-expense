json.extract! money_expense, :id, :price, :category, :comment, :created_at, :updated_at
json.url money_expense_url(money_expense, format: :json)
