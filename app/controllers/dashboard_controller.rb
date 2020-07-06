class DashboardController < ApplicationController
  def accounts
    @accounts = @belvo.accounts.retrieve(link: accounts_params[:link])

    render json: @accounts
  end

  def transactions
    @transactions = @belvo.transactions.retrieve(
      link: transactions_params[:link],
      date_from: Date.today - transactions_params[:date_from],
      options: {"date_to": Date.today}
    )

    render json: @transactions
  end

  def balances
    @balances = @belvo.balances.retrieve(
      link: balances_params[:link],
      date_from: Date.today - 30,
      options: {"date_to": Date.today}
    )

    render json: @balances
  end

  def owners 
    @owners = @belvo.owners.retrieve(link: owners_params[:link])

    render json: @owners
  end

  private 

  def accounts_params 
    params.require(:accounts)
      .permit(:link)
  end

  def owners_params 
    params.require(:owners)
      .permit(:link)
  end

  def balances_params 
    params.require(:balance)
      .permit(
        :link,
        :date_from
      )
  end

  def transactions_params 
    params.require(:transactions)
      .permit(
        :link,
        :date_from
      )
  end
end
