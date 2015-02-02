class TransactionsController < ApplicationController
  def index
    @transactions = Transaction.all
  end

  def show
    @transaction = Transaction.find(params[:id])
    @comment = @transaction.comments.build
  end

  def new
    @transaction = Transaction.new
    
  end

  def create
    @transaction = Transaction.create(transaction_params)

    if @transaction.save
      redirect_to @transaction
    else
      render 'new'
    end
  end

end

private
  def transaction_params
    params.require(:transaction).permit(:amount, :category_id)
  end
