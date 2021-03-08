class LoansController < ApplicationController
  def new
    @loan = Loan.new
    @book_name = Book.find(params[:book_id]).title
  end

  def create
    @loan = Loan.new(loan_params)
    @loan.save
    Book.find(@loan.book_id).update(state: true)
    redirect_to root_path
  end

  private

  def loan_params
    params.require(:loan).permit(:book_id, :loan_beginning, :loan_end)
  end
end
