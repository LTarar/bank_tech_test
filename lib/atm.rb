require 'date'

class ATM
  attr_reader :balance

  def initialize
    @balance = 0
  end

  def deposit(money)
    @balance_after_deposit = '%.2f' % (@balance += money)
    @deposit_amount = '%.2f' % money
    date = (Date.today).to_s
    @date_of_deposit = Date.parse(date).strftime("%d/%m/%Y")
  end

  def withdraw(money)
    @balance_after_withrawal = '%.2f' % (@balance -= money)
    @withrawal_amount = '%.2f' % (money)
    date = (Date.today).to_s
    @date_of_withdrawal = Date.parse(date).strftime("%d/%m/%Y")
  end

  def print_statement
    "date || credit || debit || balance\n#{@date_of_withdrawal} || || #{@withrawal_amount} || #{@balance_after_withrawal}\n#{@date_of_deposit} || #{@deposit_amount} || || #{@balance_after_deposit}"
  end
  
end