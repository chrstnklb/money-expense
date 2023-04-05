require "test_helper"

class MoneyExpensesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @money_expense = money_expenses(:one)
  end

  test "should get index" do
    get money_expenses_url
    assert_response :success
  end

  test "should get new" do
    get new_money_expense_url
    assert_response :success
  end

  test "should create money_expense" do
    assert_difference("MoneyExpense.count") do
      post money_expenses_url, params: { money_expense: { category: @money_expense.category, comment: @money_expense.comment, price: @money_expense.price } }
    end

    assert_redirected_to money_expense_url(MoneyExpense.last)
  end

  test "should show money_expense" do
    get money_expense_url(@money_expense)
    assert_response :success
  end

  test "should get edit" do
    get edit_money_expense_url(@money_expense)
    assert_response :success
  end

  test "should update money_expense" do
    patch money_expense_url(@money_expense), params: { money_expense: { category: @money_expense.category, comment: @money_expense.comment, price: @money_expense.price } }
    assert_redirected_to money_expense_url(@money_expense)
  end

  test "should destroy money_expense" do
    assert_difference("MoneyExpense.count", -1) do
      delete money_expense_url(@money_expense)
    end

    assert_redirected_to money_expenses_url
  end
end
