require 'atm'

describe ATM do
  subject(:atm) { ATM.new }

  it 'checks for account balance to be zero by default' do
    expect(atm.balance).to eq 0
  end

  describe "#deposit" do
    it 'checks for balance after depositing money into atm' do
      atm.deposit(500)
      expect(atm.balance).to eq 500
    end
  end

  describe "#withdraw" do
    it 'checks for balance after withdrawing money from atm' do
      atm.deposit(500)
      atm.withdraw(200)
      expect(atm.balance).to eq 300
    end
  end

  describe "#print_statement" do
    it 'checks for account statement being printed with date, amount, balance' do
      atm = ATM.new
      atm.deposit(500)
      atm.withdraw(200)
      expect(atm.print_statement).to eq "date || credit || debit || balance\n08/05/2019 || || 200.00 || 300.00\n08/05/2019 || 500.00 || || 500.00"
    end
  end

end