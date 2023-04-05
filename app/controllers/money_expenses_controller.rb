class MoneyExpensesController < ApplicationController
  before_action :set_money_expense, only: %i[ show edit update destroy ]

  # GET /money_expenses or /money_expenses.json
  def index
    @money_expenses = MoneyExpense.all
  end

  # GET /money_expenses/1 or /money_expenses/1.json
  def show
  end

  # GET /money_expenses/new
  def new
    @money_expense = MoneyExpense.new
  end

  # GET /money_expenses/1/edit
  def edit
  end

  # POST /money_expenses or /money_expenses.json
  def create
    @money_expense = MoneyExpense.new(money_expense_params)

    respond_to do |format|
      if @money_expense.save
        format.html { redirect_to money_expense_url(@money_expense), notice: "Ausgabe erfolgreich erstellt." }
        format.json { render :show, status: :created, location: @money_expense }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @money_expense.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /money_expenses/1 or /money_expenses/1.json
  def update
    respond_to do |format|
      if @money_expense.update(money_expense_params)
        format.html { redirect_to money_expense_url(@money_expense), notice: "Ausgabe erfolgreich aktualisiert." }
        format.json { render :show, status: :ok, location: @money_expense }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @money_expense.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /money_expenses/1 or /money_expenses/1.json
  def destroy
    @money_expense.destroy

    respond_to do |format|
      format.html { redirect_to money_expenses_url, notice: "Ausgabe erfolgreich gelöscht." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_money_expense
      @money_expense = MoneyExpense.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def money_expense_params
      params.require(:money_expense).permit(:price, :category, :comment)
    end
end
