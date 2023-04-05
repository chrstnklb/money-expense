require "application_system_test_case"

class MoneyExpensesTest < ApplicationSystemTestCase
  setup do
    @money_expense = money_expenses(:one)
  end

  test "visiting the index" do
    visit money_expenses_url
    assert_selector "h1", text: "Money expenses"
  end

  test "should create money expense" do
    visit money_expenses_url
    click_on "New money expense"

    fill_in "Category", with: @money_expense.category
    fill_in "Comment", with: @money_expense.comment
    fill_in "Price", with: @money_expense.price
    click_on "Create Money expense"

    assert_text "Money expense was successfully created"
    click_on "Back"
  end

  test "should update Money expense" do
    visit money_expense_url(@money_expense)
    click_on "Edit this money expense", match: :first

    fill_in "Category", with: @money_expense.category
    fill_in "Comment", with: @money_expense.comment
    fill_in "Price", with: @money_expense.price
    click_on "Update Money expense"

    assert_text "Money expense was successfully updated"
    click_on "Back"
  end

  test "should destroy Money expense" do
    visit money_expense_url(@money_expense)
    click_on "Destroy this money expense", match: :first

    assert_text "Money expense was successfully destroyed"
  end
end
