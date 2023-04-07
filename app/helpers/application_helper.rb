module ApplicationHelper

    def back_to_expenses_button
        button_to "🔙", money_expenses_path, method: :get, class: "btn btn-small btn-secondary"
    end       

    def delete_expense_button(expense)
        button_to "🗑", expense, method: :delete, data: { confirm: "Sind Sie sicher?" }, class: "btn btn-small btn-danger"
    end

    def edit_expense_button(expense)
        button_to "⚙️", edit_money_expense_path(expense), method: :get, class: "btn btn-small btn-primary"
    end
    
    def show_expense_button(expense)
        button_to "🔍", expense, method: :get, class: "contrast outline btn-small btn-secondary"
    end

end
