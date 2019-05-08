require 'atm'
require 'date_helper'

describe 'Bank Statement Printed' do
  let(:output) do
    ['date || credit || debit || balance',
     "#{date} || || 200.00 || 300.00",
     "#{date} || 500.00 || || 500.00"]
  end

  it 'checks for account statement being printed with date, amount, balance' do
    atm = ATM.new
    atm.deposit(500)
    atm.withdraw(200)
    expect(atm.print_statement).to eq output
  end
end
