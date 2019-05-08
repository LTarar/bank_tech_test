require 'date'

class ATM
  attr_reader :current_balance

  def initialize
    @current_balance = 0
  end

  def deposit(money)
    @date_of_deposit = date_format
    @deposit_amount = currency_format(money)
    @balance_after_deposit = currency_format(@current_balance += money)
  end

  def withdraw(money)
    @date_of_withdrawal = date_format
    @withrawal_amount = currency_format(money)
    @balance_after_withrawal = currency_format(@current_balance -= money)
  end

  def print_statement
    "date || credit || debit || balance
    #{@date_of_withdrawal} || || #{@withrawal_amount} || #{@balance_after_withrawal}
    #{@date_of_deposit} || #{@deposit_amount} || || #{@balance_after_deposit}"
  end

  private

  def currency_format(number)
    '%.2f' % (number)
  end

  def date_format
    date = (Date.today).to_s
    Date.parse(date).strftime("%d/%m/%Y")
  end
  
end