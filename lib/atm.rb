class ATM
  attr_reader :current_balance

  def initialize
    @current_balance = 0
  end

  def deposit(money)
    @date_of_deposit = date
    @deposit_amount = currency_format(money)
    @balance_after_deposit = currency_format(@current_balance += money)
  end

  def withdraw(money)
    @date_of_withdrawal = date
    @withrawal_amount = currency_format(money)
    @balance_after_withrawal = currency_format(@current_balance -= money)
  end

  def print_statement
    statement = ['date || credit || debit || balance']
    if @current_balance > 0
      statement.push("#{@date_of_withdrawal} || || #{@withrawal_amount} || #{@balance_after_withrawal}")
      statement.push("#{@date_of_deposit} || #{@deposit_amount} || || #{@balance_after_deposit}")
    else
      statement
    end
  end

  private

  def currency_format(number)
    format('%.2f', number)
  end

  def date
    Time.now.strftime('%d/%m/%Y')
  end
end
