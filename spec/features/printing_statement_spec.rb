require 'atm'

describe "Bank Statement Printed" do
  let(:output) { "date || credit || debit || balance
    08/05/2019 || || 200.00 || 300.00
    08/05/2019 || 500.00 || || 500.00" 
  }

  it 'checks for account statement being printed with date, amount, balance' do
    atm = ATM.new
    atm.deposit(500)
    atm.withdraw(200)
    expect(atm.print_statement).to eq output
  end
end