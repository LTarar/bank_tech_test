require 'atm'
require 'date_helper'

describe 'Bank Statement Printed' do
  subject(:atm) { ATM.new }

  let(:output) do
    ['date || credit || debit || balance',
     "#{date} || || 200.00 || 300.00",
     "#{date} || 500.00 || || 500.00"]
  end

  it 'checks for account statement being printed with date, amount, balance' do
    atm.deposit(500)
    atm.withdraw(200)
    expect(atm.print_statement).to eq output
  end

  it 'checks for account statement being printed without any prior transaction' do
    atm = ATM.new
    expect(atm.print_statement).to eq ['date || credit || debit || balance']
  end
end
