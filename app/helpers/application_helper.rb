module ApplicationHelper

    def back_to_expenses_button
        button_to "Zurück zu Ausgaben", money_expenses_path, method: :get, class: "btn btn-small btn-secondary"
    end       

    def delete_expense_button(expense)
        button_to "Lösche diese Ausgabe", expense, method: :delete, data: { confirm: "Sind Sie sicher?" }, class: "btn btn-small btn-danger"
    end

end
